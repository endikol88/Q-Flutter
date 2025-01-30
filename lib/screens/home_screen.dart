import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'search_screen.dart';
import 'profile_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme; // Tema değiştirme fonksiyonu

  const HomeScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    // Tema kontrolü (Aydınlık veya Karanlık)
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? const Color.fromARGB(255, 24, 23, 23) : const Color.fromARGB(255, 233, 232, 232),

      // AppBar
      appBar: AppBar(
        backgroundColor: isDarkMode ? const Color.fromARGB(255, 112, 6, 6) : const Color.fromARGB(255, 1, 28, 116),
        title: Text(
          'Radeon',
          style: TextStyle(
            color: isDarkMode ? Colors.white : const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            color: isDarkMode ? Colors.white : const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.person),
            color: isDarkMode ? Colors.white : const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            color: isDarkMode ? Colors.white : const Color.fromARGB(255, 250, 250, 250),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.brightness_6),
            color: isDarkMode ? Colors.white : const Color.fromARGB(255, 255, 255, 255),
            onPressed: toggleTheme,
          ),
        ],
      ),

      // Ana içerik
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Oyun Haberleri ve Güncel Bedava Oyunlar',
              style: TextStyle(
                color: isDarkMode ? const Color.fromARGB(255, 255, 255, 255) : Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Oyun Listeleri
          Expanded(
            child: Row(
              children: [
                // Gündemdeki Oyunlar
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gündemde Olan Oyunlar',
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
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
                                isDarkMode: isDarkMode,
                              ),
                              gameInfo(
                                title: 'Call of Duty Modern Warfare III',
                                description: 'Call of Duty serisinin yeni oyunu Modern Warfare III, aksiyon dolu haritalar ve heyecan verici çok oyunculu modlar sunuyor. Oyuncular, yeni haritalarda mücadele ederken, hikayenin derinliklerine inerek savaşın arkasındaki karanlık sırları keşfedecekler. Ayrıca yeni silahlar ve taktikler ile düşmanlarınızı alt edebilirsiniz.',
                                imagePath: 'lib/assets/images/codmw3.jpg',
                                url: 'https://www.callofduty.com',
                                isDarkMode: isDarkMode,
                              ),
                              gameInfo(
                                title: 'GTA 6',
                                description: 'GTA 6, Rockstar Games\'in merakla beklenen oyunu...',
                                imagePath: 'lib/assets/images/gta6.jpg',
                                url: 'https://www.rockstargames.com/gta-6',
                                isDarkMode: isDarkMode,
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
                        Text(
                          'Bedava Oyunlar',
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
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
                                description: 'Epic Games Store üzerinden bedava...',
                                imagePath: 'lib/assets/images/control.jpg',
                                url: 'https://www.epicgames.com/store/en-US/p/control',
                                isDarkMode: isDarkMode,
                              ),
                              gameInfo(
                                title: 'Among Us',
                                description: 'Among Us, Steam üzerinden bedava...',
                                imagePath: 'lib/assets/images/amongus.jpg',
                                url: 'https://store.steampowered.com/app/945360/Among_Us/',
                                isDarkMode: isDarkMode,
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
            color: isDarkMode ? Colors.black : Colors.grey[300],
            height: 30,
          ),
        ],
      ),
    );
  }

  // Dinamik olarak oyun bilgisini göstermek için widget fonksiyonu
  Widget gameInfo({
    required String title,
    required String description,
    required String imagePath,
    required String url,
    required bool isDarkMode,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () async {
          Uri uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          } else {
            debugPrint('URL açılamadı: $url');
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isDarkMode ? Colors.grey[800] : Colors.grey[300],
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
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  color: isDarkMode ? Colors.white70 : Colors.black87,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
