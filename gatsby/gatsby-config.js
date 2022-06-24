module.exports = {
  siteMetadata: {
    title: `Hayalet Sevgilim`,
    lyric: `Ceza mı bu Çektiğim çile mi
    Yıllardır tuttuğum nöbet bitmeyecek mi?
    Bir küçük kar tanesi gibiyim
    Avucunda eriyen dön bebeğim

    Gözyaşlarını görürsem
    Erir kanatlarım
    Uçamam rüyalarında yanına
    Sonsuzluk senle başladı
    O küçük dünyamda
    Unutma gittiğinde yarım kaldım

    Çöllerdeyim yanıyorum
    Kutuptayım üşüyorum
    Ceza benim çekiyorum ne olur dön
    Uzanıyorum tutamıyorum
    Özlüyorum ağlıyorum
    Yasak mısın anlamıyorum ne olur dön

    Sevmesen de beni özledim sesini
    Git desem de yine gitmesen
    Yıllardır çektiğim bu hasret mi çile mi?
    Haram mısın bana bi' bilsem

    Sevmesen de beni özledim sesini
    Git desem de yine gitmesen
    Yıllardır çektiğim bu hasret mi çile mi?
    Haram mısın bana bi' bilsem

    Bebeğim benim, hayalet sevgilim
    Bebeğim benim, hayalet sevgilim

    Hayalet sevgilim

    Çöllerdeyim yanıyorum
    Kutuptayım üşüyorum
    Ceza benim çekiyorum ne olur dön
    Uzanıyorum tutamıyorum
    Özlüyorum ağlıyorum
    Yasak mısın anlamıyorum ne olur dön

    Sevmesen de beni özledim sesini
    Git desem de yine gitmesen
    Yıllardır çektiğim bu hasret mi çile mi?
    Haram mısın bana bi' bilsem

    Sevmesen de beni özledim sesini
    Git desem de yine gitmesen
    Yıllardır çektiğim bu hasret mi çile mi?
    Haram mısın bana bi' bilsem

    Bebeğim benim hayalet sevgilim
    Bebeğim benim hayalet sevgilim

    Hayalet sevgilim
    Hayalet sevgilim`,
    siteUrl: `https://gatsbystarterdefaultsource.gatsbyjs.io/`,
  },
  plugins: [
    `gatsby-plugin-react-helmet`,
    `gatsby-plugin-image`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `images`,
        path: `${__dirname}/src/images`,
      },
    },
    `gatsby-transformer-sharp`,
    `gatsby-plugin-sharp`,
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: `gatsby-starter-default`,
        short_name: `starter`,
        start_url: `/`,
        background_color: `#663399`,
        display: `minimal-ui`,
        icon: `src/images/gatsby-icon.png`,
      },
    },
  ],
}
