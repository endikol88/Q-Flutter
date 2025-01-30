import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:radeon/core/themes.dart';
import 'package:radeon/screens/login_screen.dart';
import 'package:radeon/screens/loading_screen.dart';
import 'package:radeon/screens/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  // Sayfa yönlendirme ayarları
  late final GoRouter _router = GoRouter(
    initialLocation: '/login', // İlk açılışta Login sayfası açılacak
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/loading',
        builder: (context, state) => const LoadingScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(toggleTheme: toggleTheme),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      routerConfig: _router, // GoRouter kullanılıyor
    );
  }
}
