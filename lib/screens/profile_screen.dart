import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            const Text(
              'Ahmet Emre Kara',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Okul Numarası: 2320161155',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 5),
            const Text(
              'Bölüm: Bilgisayar Programcılığı',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Ana ekrana dönmek için
              },
              child: const Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
