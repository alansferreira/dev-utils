import { green } from 'colors'
import { LanguageUtilsBase } from './project-base'

export const node = new LanguageUtilsBase({
  name: 'node',
  color: green,
  globExpressions: ['**/package.json', '**/node_modules'],
  cleanDirs: ['node_modules', 'bin', 'dist']
})

// export const discover = (dir: string) =>
//   fg(globExpressions.map((g) => join(dir, g)))

// const removeDir = (dir: string) => {
//   if (existsSync(dir)) {
//     rmdirSync(dir, { recursive: true })
//     console.log(`Removed '${dir}'!`)
//   }
// }

// export const clean = async (dir: string) => {
//   const projects = await discover(dir)
//   for (const proj of projects) {
//     const pDir = dirname(proj)
//     removeDir(join(pDir, 'node_modules'))
//     removeDir(join(pDir, 'bin'))
//     removeDir(join(pDir, 'dist'))
//   }
// }
