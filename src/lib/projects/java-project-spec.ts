import { clean, discover } from './java-project'

describe('Project discover', () => {
  test('discover node projects', async () => {
    const discovered = await discover(
      '/media/alf/usr-data/dev/repo/bitbucket/alansferreira/clip-cloud'
    )
    console.log(discovered)
    expect(true)
  })
  test('clean node projects', async () => {
    const discovered = await clean(
      '/media/alf/usr-data/dev/repo/bitbucket/alansferreira/clip-cloud'
    )
    expect(true)
  })
})
