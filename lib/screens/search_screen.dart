import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keşfet'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.search,
              size: 100,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              'Keşfet Ekranı',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Burada içerik arayabilirsiniz.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Ana Sayfa'ya dönmek için
              },
              child: const Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}