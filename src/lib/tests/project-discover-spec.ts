import { discover } from '../project-discover'

describe('Project discover', () => {
  test('sample discover', async () => {
    const discovered = await discover(
      '/media/alf/usr-data/dev/repo/bitbucket/alansferreira/clip-cloud'
    )
    console.log(discovered)
    expect(true)
  })
})
