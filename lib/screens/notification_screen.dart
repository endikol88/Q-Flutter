import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Bildirimler', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNotificationCard(
            icon: Icons.sports_esports,
            title: 'League of Legends 14.2 Yaması Yayınlandı!',
            description: 'Yeni denge değişiklikleri ve şampiyon güncellemeleriyle oyuna girin!',
            time: '2 saat önce',
          ),
          _buildNotificationCard(
            icon: Icons.sports_esports,
            title: 'Counter-Strike 2 Güncellemesi!',
            description: 'Yeni harita ve silah güncellemeleri CS2’de yayında!',
            time: '5 saat önce',
          ),
          _buildNotificationCard(
            icon: Icons.gamepad,
            title: 'Spider-Man 2 PC’ye Geliyor!',
            description: 'Marvel’s Spider-Man 2, resmi olarak PC’ye çıkış yapıyor!',
            time: '1 gün önce',
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationCard({
    required IconData icon,
    required String title,
    required String description,
    required String time,
  }) {
    return Card(
      color: const Color(0xFF1E1E1E),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.redAccent),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: const TextStyle(color: Colors.white70)),
        trailing: Text(time, style: const TextStyle(color: Colors.white54, fontSize: 12)),
      ),
    );
  }
}