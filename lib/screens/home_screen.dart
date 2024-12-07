import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'search_screen.dart'; // SearchScreen dosyasını içeri aktar
import 'profile_screen.dart'; // ProfileScreen dosyasını içeri aktar
import 'notification_screen.dart'; // NotificationScreen dosyasını içeri aktar
import 'package:url_launcher/url_launcher.dart'; // URL açmak için gerekli import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 37, 37, 37), // Arka plan rengi

      // AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 99, 28, 28), // Koyu kırmızı arka plan
        title: const Text(
          'Radeon',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.person, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bell, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreen()),
              );
            },
          ),
        ],
      ),

      // Ana içerik
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Oyun Haberleri ve Güncel Bedava Oyunlar',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),

          // Gündemde Olan Oyunlar ve Bedava Oyunlar Yan Yana
          Expanded(
            child: Row(
              children: [
                // Gündemde Olan Oyunlar
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gündemde Olan Oyunlar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: ListView(
                            children: [
                              gameInfo(
                                title: 'Cyberpunk 2077: Phantom Liberty',
                                description: 'Cyberpunk 2077\'nin yeni genişleme paketi Phantom Liberty, oyunculara yeni görevler, zenginleştirilmiş hikaye ve Dogtown adında yepyeni bir bölge sunuyor. Oyuncular, bu genişleme ile daha derin bir oyun deneyimi yaşayacaklar. Ayrıca, yeni karakter özelleştirmeleri ve iyileştirilmiş oyun mekaniği ile çok daha heyecanlı bir macera sizi bekliyor.',
                                imagePath: 'lib/assets/images/cyberpunk2077.jpg',
                                url: 'https://www.cyberpunk.net',
                              ),
                              gameInfo(
                                title: 'Call of Duty Modern Warfare III',
                                description: 'Call of Duty serisinin yeni oyunu Modern Warfare III, aksiyon dolu haritalar ve heyecan verici çok oyunculu modlar sunuyor. Oyuncular, yeni haritalarda mücadele ederken, hikayenin derinliklerine inerek savaşın arkasındaki karanlık sırları keşfedecekler. Ayrıca yeni silahlar ve taktikler ile düşmanlarınızı alt edebilirsiniz.',
                                imagePath: 'lib/assets/images/codmw3.jpg',
                                url: 'https://www.callofduty.com',
                              ),
                              gameInfo(
                                title: 'GTA 6',
                                description: 'GTA 6, Rockstar Games\'in merakla beklenen yeni oyunudur. Henüz resmi olarak duyurulmamış olsa da, oyun dünyasında söylentiler hızla yayılmakta. GTA 6, daha büyük bir harita, daha gelişmiş karakterler ve yeni hikayeler ile oyunculara unutulmaz bir deneyim sunmayı vaat ediyor. 2025 yılında çıkması bekleniyor.',
                                imagePath: 'lib/assets/images/gta6.jpg',
                                url: 'https://www.rockstargames.com/gta-6',
                              ),
                              gameInfo(
                                title: 'Starfield',
                                description: 'Bethesda\'nın uzay temalı RPG oyunu Starfield, oyuncuları devasa bir evrenin derinliklerine götürüyor. Keşif, savaş, keşif ve hayatta kalma mekanikleri ile Starfield, bilim kurgu seven oyunculara müthiş bir deneyim sunuyor. Ayrıca, oyunun uzay gemisi özelleştirme ve gezegenler arası seyahat özellikleri de oldukça etkileyici.',
                                imagePath: 'lib/assets/images/starfield.jpg',
                                url: 'https://starfieldgame.com',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Bedava Oyunlar
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Bedava Oyunlar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: ListView(
                            children: [
                              gameInfo(
                                title: 'Control',
                                description: 'Epic Games Store üzerinden bedava olarak sunuluyor. Control, Jesse Faden adında bir kadının, paranormal bir organizasyonu keşfederken yaşadığı gerilim dolu bir hikayeyi anlatıyor. Oyun, dinamik fizik ve gizemli atmosferiyle dikkat çekiyor. Control, aksiyon ve keşif sevenler için mükemmel bir seçenek.',
                                imagePath: 'lib/assets/images/control.jpg',
                                url: 'https://www.epicgames.com/store/en-US/p/control',
                              ),
                              gameInfo(
                                title: 'Among Us',
                                description: 'Among Us, Steam üzerinden bedava olarak oynanabiliyor. Bu oyun, oyuncuların bir uzay gemisinde hayatta kalmaya çalışırken, aralarındaki sahtekarı bulmak için sosyal strateji ve iletişim becerilerini kullanmalarını sağlıyor. Çok oyunculu ve eğlenceli bir deneyim sunan Among Us, arkadaşlarınızla saatlerce eğlenebileceğiniz bir oyun.',
                                imagePath: 'lib/assets/images/amongus.jpg',
                                url: 'https://store.steampowered.com/app/945360/Among_Us/',
                              ),
                              gameInfo(
                                title: 'The Witcher Enhanced Edition',
                                description: 'The Witcher Enhanced Edition, GOG üzerinden ücretsiz olarak sunuluyor. Geralt of Rivia\'nın maceralarına odaklanan bu RPG oyunu, derin hikayesi, heyecan verici dövüşleri ve karakter etkileşimleriyle çok büyük bir övgü aldı. Oyun, orijinal versiyonunun üzerine yapılan iyileştirmelerle daha da zenginleşmiş.',
                                imagePath: 'lib/assets/images/witcher.jpg',
                                url: 'https://www.gog.com/game/the_witcher_enhanced_edition',
                              ),
                              gameInfo(
                                title: 'Assassin\'s Creed II',
                                description: 'Assassin\'s Creed II, Ubisoft Store üzerinden ücretsiz. Oyun, İtalya\'nın Rönesans döneminde geçiyor ve baş karakter Ezio Auditore\'nin intikam arayışını konu alıyor. Serinin en popüler oyunlarından biri olan Assassin\'s Creed II, oyunculara büyüleyici bir açık dünya deneyimi ve mükemmel bir parkur mekanizması sunuyor.',
                                imagePath: 'lib/assets/images/assassinscreed2.jpg',
                                url: 'https://www.ubisoft.com/store/game/assassins-creed-ii',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Siyah Alt Boşluk
          Container(
            color: Colors.black,
            height: 30, // Siyah boşluğun yüksekliği artırıldı
          ),
        ],
      ),
    );
  }

  // Dinamik olarak oyun bilgisini göstermek için widget fonksiyonu
  Widget gameInfo({required String title, required String description, required String imagePath, required String url}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () async {
          // URL'yi aç
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFC0C0C0), // Gümüş renk arka plan
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
