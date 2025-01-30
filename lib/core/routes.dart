import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/screens/loading_screen.dart';
import 'package:flutter_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isDarkMode = false; // Tema değişkeni

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  late final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
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
      title: 'Flutter App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      routerConfig: _router,
    );
  }
}
