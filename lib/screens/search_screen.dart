import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Siyah arka plan
      appBar: AppBar(
        title: const Text('Keşfet'),
        backgroundColor: const Color(0xFF1E1E1E), // Koyu AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Keşfet',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Burada içerik arayabilir ve yeni şeyler keşfedebilirsiniz.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Aramak istediğiniz terimi yazın...',
                hintStyle: const TextStyle(color: Colors.white38),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.white54),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),

            // Öne çıkan kategoriler
            const Text(
              'Öne Çıkan Kategoriler:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Chip(
                  label: const Text('Teknoloji'),
                  backgroundColor: Colors.green,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
                Chip(
                  label: const Text('Bilim'),
                  backgroundColor: Colors.green,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
                Chip(
                  label: const Text('Sanat'),
                  backgroundColor: Colors.green,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
                Chip(
                  label: const Text('Eğlence'),
                  backgroundColor: Colors.green,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Spacer(),

            // Ana Sayfaya dön butonu
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); // Ana Sayfa'ya dön
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text('Ana Sayfaya Dön'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
