import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'search_screen.dart';  // SearchScreen dosyasını içeri aktar
import 'profile_screen.dart';  // ProfileScreen dosyasını içeri aktar
import 'notification_screen.dart';  // NotificationScreen dosyasını içeri aktar

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 37, 37, 37),
      // AppBar
      appBar: AppBar(
        title: const Text(
          'Ana Sayfa',
          style: TextStyle(
            color: Color.fromARGB(179, 0, 0, 0),  // Daha az parlak beyaz renk
          ),
        ),
        actions: [
          // Keşfet ikonuna tıklanırsa, Keşfet ekranına yönlendirecek
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),  // Keşfet ekranına yönlendir
              );
            },
          ),
          // Profil ikonuna tıklanırsa, Profil ekranına yönlendirecek
          IconButton(
            icon: const Icon(CupertinoIcons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),  // Profil ekranına yönlendir
              );
            },
          ),
          // Bildirim çanı ikonu tıklanırsa, Bildirim ekranına yönlendirecek
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreen()),  // Bildirim ekranına yönlendir
              );
            },
          ),
        ],
      ),

      // Ana içerik
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Ana Sayfa İçeriği',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
