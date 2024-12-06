import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 37, 37, 37) ,
      body: SizedBox.expand(
        /// width: double.infinity,
        child: Column(
          children: [
            // Logo bölümü
        Expanded(
          child: Container(
            width: 150,
            height: 150,
            child: Image.asset(
              'lib/assets/images/logo.webp',
              fit: BoxFit.contain,
            ),
          ),
        ),
            
            // Yükleniyor yazısı
             CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}