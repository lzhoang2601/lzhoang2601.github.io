export default defineAppConfig({
    docus: {
      title: 'Hoàng Hồng Quân',
      description: 'Nơi chia sẻ về hackintosh.',
      image: 'https://user-images.githubusercontent.com/904724/185365452-87b7ca7b-6030-4813-a2db-5e65c785bf88.png',
      socials: {
        facebook: 'hutieu2804',
        github: 'lzhoang2601'
      },
      github: {
        branch: 'main',
        repo: 'lzhoang2601',
        owner: 'lzhoang2601',
        edit: true
      },
      aside: {
        level: 0,
        collapsed: false,
        exclude: []
      },
      main: {
        padded: true,
        fluid: true
      },
      header: {
        logo: true,
        showLinkIcon: true,
        exclude: [],
        fluid: true
      },
      footer: {
        iconLinks: [
          {
            href: 'https://lzhoang2601.github.io',
            icon: 'simple-icons:nuxtdotjs'
          }
        ]
      }
    }
  })
  