import { Color } from 'colors'
import fg from 'fast-glob'
import { existsSync, rmdirSync } from 'fs'
import { dirname, join } from 'path'

export interface LanguageOptions {
  name: string
  color: Color
  globExpressions: string[]
  cleanDirs: string[]
}

const removeDir = (dir: string) => {
  if (existsSync(dir)) {
    rmdirSync(dir, { recursive: true })
    console.log(`Removed '${dir}'!`)
  }
}

export class LanguageUtilsBase {
  constructor(private opts: LanguageOptions) {}
  get name() {
    return this.opts.name
  }
  get color() {
    return this.opts.color
  }
  async clean(dir: string) {
    const projects = await this.discover(dir)
    for (const proj of projects) {
      const pDir = dirname(proj)
      for (const cDir of this.opts.cleanDirs) {
        removeDir(join(pDir, cDir))
      }
      // removeDir(join(pDir, 'node_modules'))
      // removeDir(join(pDir, 'bin'))
      // removeDir(join(pDir, 'dist'))
    }
  }
  async discover(dir: string) {
    return fg(this.opts.globExpressions.map((g) => join(dir, g)))
  }
}
