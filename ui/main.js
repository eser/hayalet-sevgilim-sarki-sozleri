const LYRICS = `Ceza mı bu
Çektiğim çile mi
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
Hayalet sevgilim`

function main() {
  const lyrics = document.getElementById("lyrics")
  let i = -1
  document.addEventListener("keyup", (e) => {
    i++
    const char = LYRICS[i]
    lyrics.innerHTML += char ?? ""
    window.scrollTo(0, document.body.scrollHeight)
  })
}

document.addEventListener("DOMContentLoaded", () => setTimeout(main, 1000))
