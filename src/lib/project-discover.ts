import { fstat, rmdirSync } from 'fs'
import glob from 'glob'
import path, { join } from 'path'

type fnGetProjectDir = (globMatch: string) => string
type fnClean = (globMatch) => void

const defaultGetProjectDir = (globMatch) => path.dirname(globMatch)

interface Identifier {
  // name: string
  rootIdentifiers: {
    glob: string
    getProjectDir?: fnGetProjectDir
    clean?: fnClean
  }[]
}
interface Languages {
  csharp: 'csharp'
  java: 'java'
  node: 'node'
}
const globIdentifiers: { [x: string]: Identifier } = {
  csharp: {
    rootIdentifiers: [
      {
        glob: '**/*.csproj',
        clean: (globMatch) => {
          const pDir = defaultGetProjectDir(globMatch)
          rmdirSync(join(pDir, 'obj'), { recursive: true })
          rmdirSync(join(pDir, 'bin'), { recursive: true })
        }
      }
    ]
  },
  java: {
    rootIdentifiers: [
      {
        glob: '**/pom.xml',
        clean: (globMatch) => {
          const pDir = defaultGetProjectDir(globMatch)
          rmdirSync(join(pDir, 'target'), { recursive: true })
        }
      },
      {
        glob: '**/.project',
        clean: (globMatch) => {
          const pDir = defaultGetProjectDir(globMatch)
          rmdirSync(join(pDir, 'target'), { recursive: true })
        }
      },
      {
        glob: '**/.settings',
        clean: (globMatch) => {
          const pDir = defaultGetProjectDir(globMatch)
          rmdirSync(join(pDir, 'target'), { recursive: true })
        }
      }
    ]
  },
  node: {
    rootIdentifiers: [
      {
        glob: '**/package.json',
        clean: (globMatch) => {
          const pDir = defaultGetProjectDir(globMatch)
          rmdirSync(join(pDir, 'node_modules'), { recursive: true })
          rmdirSync(join(pDir, 'dist'), { recursive: true })
        }
      },
      {
        glob: '**/node_modules',
        clean: (globMatch) => {
          const pDir = defaultGetProjectDir(globMatch)
          rmdirSync(join(pDir, 'node_modules'), { recursive: true })
          rmdirSync(join(pDir, 'dist'), { recursive: true })
        }
      }
    ]
  }
}

const promissifyGlob = (filter: string) => {
  return new Promise<string[]>((resolve, reject) => {
    glob(filter, (err, matches) => {
      if (err) return reject(err)
      resolve(matches)
    })
  })
}

const discoverIdentifier = async (dir: string, identifier: Identifier) => {
  const { rootIdentifiers } = identifier
  const discovered = await Promise.all(
    rootIdentifiers.map((e) => promissifyGlob(path.join(dir, e.glob)))
  )

  return discovered.filter((d) => d.length != 0).flat()
}

export const discover = async (dir: string) => {
  const promiseArr = []
  for (const lang in globIdentifiers) {
    if (Object.prototype.hasOwnProperty.call(globIdentifiers, lang)) {
      const i = globIdentifiers[lang]
      const d = { lang, matches: await discoverIdentifier(dir, i) }
      if (d.matches.length === 0) continue
      promiseArr.push({ lang, matches: await discoverIdentifier(dir, i) })
    }
  }
  const discovered = await Promise.all(promiseArr)
  return discovered.filter((d) => d.matches.length != 0)
}

// export const removeDependencies = (discovered: {
//   lang: string
//   matches: string[]
// }) => {
//   const fn = globIdentifiers[lang]
// }
