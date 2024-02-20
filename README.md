# Tutorial 1

## Latihan: Playtest

> Apa saja pesan log yang dicetak pada panel Output?

Pesan log yang dicetak adalah `Platform initialized`

> Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

Terdapat satu pesan log yang dicetak, yaitu `Reached objective!` ketika mencapai batas atas

> Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

Lokasi scene ObjectiveArea dijadikan patokan untuk pesan log `Reached objective!` terprint. Sehingga apabila pesawat berada di daerah ObjectiveArea, maka pesan tersebut dicetak.

## Latihan: Memanipulasi Node dan Scene

> Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

Sprite digunakan untuk menampilkan suatu texture, di kasus ini adalah sebuah gambar .png yang menggambarkan objek tersebut.

> Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

Pada umumnya, perbedaan dari `RigidBody2D` dan `StaticBody2D` terletak dari hubungannya dengan fisika yang berlaku di game. Objek dengan tipe `RigidBody2D` akan dipengaruhi oleh fisika seperti gravitasi yang game implementasikan,
sedangkan `StaticBody2D` tidak akan berpengaruh dengan fisika apapun pada peletakan posisinya (statis).

> Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Tidak ada yang berubah, karena kecepatan jatuh pada fisika tidak akan berpengaruh terhadap berat karena kondisi di dalam game sama dengan kondisi vakum.

```
Fjatuh = W = m * g
F = m * a
m * g = m * a
a = g
```

Sehingga kecepatan jatuh sudah pasti sama, yaitu kecepatan gravitasi.

> Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Setelah di-disable, maka pesawat akan tembus dan tidak berhenti di platform. Hal ini disebabkan karena collission tidak pernah terjadi antara platform dan pesawat.

> Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

Visualisasi pesawat akan berubah ketika dirubah parameter-parameter tersebut, di mana:

- mengganti Position akan merubah posisi pesawat di viewport
- mengganti Rotation akan merubah rotasi pesawat di viewport secara clockwise
- mengganti Scale akan melebarkan/menciutkan width dan height dari pesawat

> Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Karena nilai dari transform pada kedua objek tersebut berdasarkan dari parentnya, yaitu PlatformBlue. Sehingga posisi x dan y didasarkan dari transform awal dari PlatformBlue, lalu ditambah dengan transform dari object StonePlatform[2] itu sendiri.
