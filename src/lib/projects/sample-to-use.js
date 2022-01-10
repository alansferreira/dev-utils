const n = require('./dist/lib/projects/node-project')
const j = require('./dist/lib/projects/java-project')

let dir = '/media/alf/usr-data/dev/repo/local-tests'
n.clean(dir).then(() => console.log(`finish: ${dir}`))
j.clean(dir).then(() => console.log(`finish: ${dir}`))