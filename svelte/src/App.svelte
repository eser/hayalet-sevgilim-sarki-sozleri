<script>
	export let singer, songTitle;

const data = [
  "Ceza mı bu",
  "Çektiğim çile mi",
  "Yıllardır tuttuğum nöbet bitmeyecek mi?",
  "Bir küçük kar tanesi gibiyim",
  "Avucunda eriyen dön bebeğim",
  "",
  "Gözyaşlarını görürsem",
  "Erir kanatlarım",
  "Uçamam rüyalarında yanına",
  "Sonsuzluk senle başladı",
  "O küçük dünyamda",
  "Unutma gittiğinde yarım kaldım",
  "",
  "Çöllerdeyim yanıyorum",
  "Kutuptayım üşüyorum",
  "Ceza benim çekiyorum ne olur dön",
  "Uzanıyorum tutamıyorum",
  "Özlüyorum ağlıyorum",
  "Yasak mısın anlamıyorum ne olur dön",
  "",
  "Sevmesen de beni özledim sesini",
  "Git desem de yine gitmesen",
  "Yıllardır çektiğim bu hasret mi çile mi?",
  "Haram mısın bana bi' bilsem",
  "",
  "Sevmesen de beni özledim sesini",
  "Git desem de yine gitmesen",
  "Yıllardır çektiğim bu hasret mi çile mi?",
  "Haram mısın bana bi' bilsem",
  "",
  "Bebeğim benim, hayalet sevgilim",
  "Bebeğim benim, hayalet sevgilim",
  "",
  "Hayalet sevgilim",
  "",
  "Çöllerdeyim yanıyorum",
  "Kutuptayım üşüyorum",
  "Ceza benim çekiyorum ne olur dön",
  "Uzanıyorum tutamıyorum",
  "Özlüyorum ağlıyorum",
  "Yasak mısın anlamıyorum ne olur dön",
  "",
  "Sevmesen de beni özledim sesini",
  "Git desem de yine gitmesen",
  "Yıllardır çektiğim bu hasret mi çile mi?",
  "Haram mısın bana bi' bilsem",
  "",
  "Sevmesen de beni özledim sesini",
  "Git desem de yine gitmesen",
  "Yıllardır çektiğim bu hasret mi çile mi?",
  "Haram mısın bana bi' bilsem",
  "",
  "Bebeğim benim hayalet sevgilim",
  "Bebeğim benim hayalet sevgilim",
  "",
  "Hayalet sevgilim",
  "Hayalet sevgilim"
]
</script>

<main>
	<h1>{singer}'dan {songTitle}</h1>
	<ul>
		{#each data as lyric}
			<li>{lyric}</li>
		{/each}
	</ul>
</main>	

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	li {
		list-style-type: none;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>