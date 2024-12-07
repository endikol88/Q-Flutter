import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Siyah arka plan
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: const Color(0xFF1E1E1E), // AppBar koyu renk
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profil fotoğrafı
            const CircleAvatar(
              radius: 60,
              backgroundColor: const Color.fromARGB(255, 99, 28, 28),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),

            // İsim ve detaylar
            const Text(
              'Ahmet Emre Kara',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Okul Numarası: 2320161155',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Bölüm: Bilgisayar Programcılığı',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const Divider(
              color: Colors.white30,
              height: 40,
              thickness: 1,
            ),

            // Ek bilgiler
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hakkında:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Merhaba! Ben Ahmet Emre Kara, Bilgisayar Programcılığı bölümü öğrencisiyim. Yazılım geliştirme, mobil uygulamalar ve yapay zeka konularına ilgi duyuyorum.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),

            // İletişim ve butonlar
            ElevatedButton.icon(
              onPressed: () {
                // İletişim butonu
              },
              icon: const Icon(Icons.email, color: Colors.white),
              label: const Text('E-posta Gönder'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 99, 28, 28),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Ana sayfaya dön
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E1E1E),
                foregroundColor: Colors.white,
                side: const BorderSide(color: Color.fromARGB(255, 99, 28, 28)),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              child: const Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
