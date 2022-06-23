package com.maktay.android

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    lateinit var lyricsTV : TextView
    private var runnable = Runnable { }
    private var handler = Handler(Looper.myLooper()!!)

    private val lyrics = arrayOf(
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
        "Hayalet sevgilim",
        ""
    )

    override fun onCreate(savedInstanceState : Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        lyricsTV = findViewById(R.id.lyricsTV)

        var counter = 0
        runnable = Runnable {
            if (counter >= lyrics.size)
                counter = 0

            lyricsTV.text = lyrics[counter]

            var timer : Long = (lyrics[counter].length * 50).toLong()

            if (lyrics[counter].isEmpty()) timer = 1000

            counter++
            handler.postDelayed(runnable, timer)
        }
        handler.post(runnable)
    }
}