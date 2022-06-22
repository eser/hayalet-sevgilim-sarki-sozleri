# Hayalet Sevgilim Şarkı Sözleri

## İçerik

```
Ceza mı bu
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
Hayalet sevgilim
```

## Neden

Baktım GitHub "popülerlik" kriterleri koymaya başlamış, bunlar üzerinden
kullanıcıları ve katkıları ayrımlamaya başlamış. O halde ben de popülizmin
dibine vurmak istedim. Buyrun, Sözleri İrem Aydın'a ait olan Hayalet Sevgilim.
Bugüne kadar topluluk yararını gözettiğini düşündüğüm GitHub, bu repoyu
starlarsanız belki seneye beni de sevgili popüler kullanıcılar listesine alır 🙏
Lütfen alsın çünkü.

Aslında bunu Twitter'dan bas bas duyurmam, GitHub'da popüler repolara girdikten
sonra gifler alıp yine Twitter'da dolaşıma sokmam, YouTube'da videosunu çekip
sonra bu videoyu buraya linklemem filan gerekli daha fazla star alması için. Ama
onu sizler için 100 star'dan sonra yapacağım. Çünkü klik ekonomisi böyle
çalışıyor.

## Programatik Kullanım

Deno / Web / ES Modules:

```js
import data from "https://raw.githubusercontent.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/master/js/index.json" assert { type: "json" };
// console.log(data);
```

veya

```js
import data from "https://raw.githubusercontent.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/master/js/mod.js";
// console.log(data);
```

Node.js:

```js
const data = require("./index.json");
// console.log(data);
```

Shell:

```bash
data=$(curl https://raw.githubusercontent.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/master/js/index.json)
# echo $data
```

Python I:

```bash
cd ./py
python3 program.py
```

Python II:

```bash
cd ./python
make || make run || uvicorn main:app --reload
```

Swift:

```bash
cd ./hayalet-sevgilim-sarki-sozleri/swift/HayaletSevgilim-CommandLine
swift run
```

PHP:

```php
<?php

use HayaletSevgilim\HayaletSevgilim;

HayaletSevgilim::print();
```

GO I:

```go

import "github.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/go/hayaletsevgilim"

hayaletsevgilim.Print();
```

PowerShell:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
$result = Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/master/js/index.json"

if ($result.StatusCode -eq 200)
{
    $lyrics = ConvertFrom-Json $result.Content
    Write-Output $lyrics
}
```

Rust I:

```bash
cd ./rust
cargo build
cargo run
```

Rust II:

```bash
cd ./rs
cargo build
cargo run
```

GO I:

```bash
cd ./go
go run .
```

GO II:

```bash
cd ./golang
go run .
```

C:

```bash
gcc main.c

./a.out
```

Dart:

```dart
import 'HayaletSevgilim.dart';

HayaletSevgilim.printLyrics();
```

SQL:

```bash
# remote:
mysql -u root -p -e "$(curl https://raw.githubusercontent.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/master/sql/hayalet-sevgilim.sql)"

# local:
mysql -u root -p -e "$(cat sql/hayalet-sevgilim.sql)"
```

Elixir:

```bash
cd ./elixir

elixir main.exs
```

TypeScript:

```typescript
cd ./ts
npm i
npm run start
```

## Programlama Dilleri

- [JavaScript](./js/)
- [TypeScript](./ts/)
- [CSharp](./csharp/)
- [Shell Script](README.md)
- [Python I](./py/)
- [Python II](./python/)
- [Swift](./swift/)
- [PHP](./php/)
- [Go I](./go/)
- [Go II](./golang/)
- [Rust I](./rust/)
- [Rust II](./rs/)
- [Ruby](./ruby/)
- [C](./C/)
- [Dart](./dart/)
- [Java](./java/)
- [SQL](./sql/)
- [Elixir](./elixir/)

## Yol Haritası

- PHP, Ruby gibi diğer kalan diller için de modüller oluşturulabilir.

## Lisans

Apache-2.0
