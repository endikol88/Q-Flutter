import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A), // Koyu gri arka plan

      // Üst navigasyon çubuğu (AppBar)
      appBar: AppBar(
        backgroundColor: const Color(0xFF292929),
        title: const Text(
          'Oyun Haberleri',
          style: TextStyle(color: Colors.white),
        ),
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF000000), // Siyah arka plan
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/motions/logo_gif_placeholder.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 80,
                      color: Colors.white,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kullanıcı Adı',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Anasayfa', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Anasayfa navigasyonu
                },
              ),
              ListTile(
                leading: const Icon(Icons.search, color: Colors.white),
                title: const Text('Aratma', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Aratma işlemi
                },
              ),
              ListTile(
                leading: const Icon(Icons.people, color: Colors.white),
                title: const Text('Arkadaşlar', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Arkadaşlar ekranı
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('Ayarlar', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Ayarlar ekranı
                },
              ),
            ],
          ),
        ),
      ),

      // Ana içerik
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sol: Oyun Haberleri
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo veya GIF Alanı
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/motions/logo_gif_placeholder.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Son Haberler',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Haber Bölümleri
                _buildNewsSection(
                  title: 'Cyberpunk 2077: Phantom Liberty Genişleme Paketi',
                  date: '07 Aralık 2024',
                  description:
                      'Cyberpunk 2077\'nin yeni genişleme paketi Phantom Liberty, oyuncuları Night City\'nin karanlık ve tehlikeli köşelerine götürüyor.',
                  imageUrl: 'assets/images/news1.jpg',
                ),
                _buildNewsSection(
                  title: 'Elden Ring DLC: Shadow of the Erdtree Detayları',
                  date: '06 Aralık 2024',
                  description:
                      'Elden Ring\'in yeni genişleme paketi Shadow of the Erdtree, oyuncuları etkileyici bir hikaye ve yeni mekanikler ile buluşturuyor.',
                  imageUrl: 'assets/images/news2.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Haber Bölümü Oluşturma Fonksiyonu
  Widget _buildNewsSection({
    required String title,
    required String date,
    required String description,
    required String imageUrl,
  }) {
    return Card(
      color: const Color(0xFF292929),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
