import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 37, 37, 37),
      body: Center( // Ortalamak için Center widget kullanılıyor
        child: Column(
          mainAxisSize: MainAxisSize.min, // Sadece içeriğe göre yükseklik ayarlanır
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo bölümü
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(
                'lib/assets/images/logo.webp',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 30), // Boşluk eklemek için

            // Yükleniyor göstergesi
            const CircularProgressIndicator(),
            const SizedBox(height: 20), // Boşluk eklemek için

            // Yükleniyor yazısı
            InkWell(
              onTap: () {
                context.go("/home");
              },
              child: const Text(
                "Devam Et",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
