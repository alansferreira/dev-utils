import { blue } from 'colors'
import { LanguageUtilsBase } from './project-base'

export const java = new LanguageUtilsBase({
  name: 'java',
  color: blue,
  globExpressions: ['**/pom.xml', '**/.project', '**/.settings'],
  cleanDirs: ['target']
})
