#!/usr/bin/env node
import { Command, Option } from 'commander'
import { node, java } from '../lib/projects'
import colors from 'colors'

const languages = [node, java]

const clean = async (dir: string, options?: CleanOptions) => {
  const { lang } = options || {}
  console.log(process.cwd())
  console.log(`  dir   : ${dir}`)
  console.log(`  --lang: ${lang || 'all'}`)

  let language = languages.find((l) => l.name === lang)
  if (!language) {
    for (language of languages) {
      await language.clean(dir)
    }
  } else {
    await language.clean(dir)
  }
}

const discover = async (dir: string, options?: DiscoverOptions) => {
  const { lang } = options || {}
  console.log(process.cwd())
  console.log(`  dir   : ${dir}`)
  console.log(`  --lang: ${lang || 'all'}`)

  let language = languages.find((l) => l.name === lang)

  if (!language) {
    for (language of languages) {
      const { color, name } = language
      const discovered = await language.discover(dir)
      discovered.forEach((d) => console.log(`${color(name)}: ${d}`))
    }
  } else {
    const { color, name } = language
    const discovered = await language.discover(dir)
    discovered.forEach((d) => console.log(`${color(name)}: ${d}`))
  }
}

// const support = (language: string, options?: SupportOptions) => {
//   console.log(`language: '${language}'`)
//   console.log(`--lang-dir: '${options.path}'`)
//   console.log(`--remove: '${options.remove}'`)
//   try {
//     const p = new LocaleSupport(options)
//     p.addSupport(language)
//     p.apply()
//   } catch (error) {
//     console.error(colors.red(error.message))
//   }
// }

// const phrase = (phrase: string, options?: PhraseOptions) => {
//   console.log(`phrase: '${phrase}'`)
//   console.log(`--path: '${options.path}'`)
//   console.log(`--from: '${options.from}'`)
//   console.log(`--remove: '${options.remove}'`)
//   try {
//     const p = new LocaleSupport(options)

//     p.addPhrase(phrase, options?.from).then(() => p.apply())
//   } catch (error) {
//     console.error(colors.red(error.message))
//   }
// }

const program = new Command()

interface CleanOptions {
  lang?: string
}

type DiscoverOptions = CleanOptions

const langOption = new Option(
  '-l|--lang [lang]',
  'Optional project language type to identifies.'
)

program
  .command('clean')
  .argument('[dir]', 'Path to discover and clean projects.', '.')
  .addOption(langOption)
  .action(clean)

program
  .command('discover')
  .argument('[dir]', 'Path to discover projects.', '.')
  .addOption(langOption)
  .action(discover)

// program.version(version)
console.log(process.argv)
program.parse(process.argv)

// interface test {
//   name?: string
// }

// const c: test = { name: 'world!' }

// console.log(colors.green(`Hello ${c.name}`))

// // POST https://translation.googleapis.com/language/translate/v2
