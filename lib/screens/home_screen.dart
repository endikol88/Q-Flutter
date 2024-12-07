import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'search_screen.dart'; // SearchScreen dosyasını içeri aktar
import 'profile_screen.dart'; // ProfileScreen dosyasını içeri aktar
import 'notification_screen.dart'; // NotificationScreen dosyasını içeri aktar

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
                                description: 'Yeni genişleme paketi ile ek görevler ve içerikler sunuluyor!',
                                imagePath: 'lib/assets/images/cyberpunk2077.jpg',
                              ),
                              gameInfo(
                                title: 'Call of Duty Modern Warfare III',
                                description: 'Yeni haritalar ve hikaye güncellemeleri yayınlandı.',
                                imagePath: 'lib/assets/images/codmw3.jpg',
                              ),
                              gameInfo(
                                title: 'GTA 6',
                                description: 'Duyurusu merakla bekleniyor, söylentilere göre 2025\'te geliyor.',
                                imagePath: 'lib/assets/images/gta6.jpg',
                              ),
                              gameInfo(
                                title: 'Starfield',
                                description: 'Uzay temalı RPG ile keşfe çıkın! Genişleme paketleri geliyor.',
                                imagePath: 'lib/assets/images/starfield.jpg',
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
                                description: 'Epic Games Store (7 Aralık - 14 Aralık)',
                                imagePath: 'lib/assets/images/control.jpg',
                              ),
                              gameInfo(
                                title: 'Among Us',
                                description: 'Steam (10 Aralık - 12 Aralık)',
                                imagePath: 'lib/assets/images/amongus.jpg',
                              ),
                              gameInfo(
                                title: 'The Witcher Enhanced Edition',
                                description: 'GOG (7 Aralık - 31 Aralık)',
                                imagePath: 'lib/assets/images/witcher.jpg',
                              ),
                              gameInfo(
                                title: 'Assassin\'s Creed II',
                                description: 'Ubisoft Store (12 Aralık - 19 Aralık)',
                                imagePath: 'lib/assets/images/assassinscreed2.jpg',
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
  Widget gameInfo({required String title, required String description, required String imagePath}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                height: 240,  // Görsellerin yüksekliği 240 piksele çıkarıldı
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
    );
  }
}
