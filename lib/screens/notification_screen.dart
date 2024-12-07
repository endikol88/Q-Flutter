import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Arka plan siyah
      appBar: AppBar(
        backgroundColor: Colors.black, // AppBar siyah
        title: const Text(
          'Bildirimler',
          style: TextStyle(color: Colors.white), // Başlık beyaz
        ),
        iconTheme: const IconThemeData(color: Colors.white), // Geri düğmesi beyaz
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Bildirim başlığı
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Son Bildirimler',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Bildirim kartları
          _buildNotificationCard(
            icon: Icons.message,
            title: 'Yeni Mesaj',
            description: 'Bir kullanıcı size mesaj gönderdi.',
            time: '2 saat önce',
          ),
          _buildNotificationCard(
            icon: Icons.update,
            title: 'Sistem Güncellemesi',
            description: 'Uygulamanız yeni bir sürüme güncellendi.',
            time: '1 gün önce',
          ),
          _buildNotificationCard(
            icon: Icons.warning,
            title: 'Uyarı',
            description: 'Hesabınızda olağan dışı bir etkinlik algılandı.',
            time: '3 gün önce',
          ),
          _buildNotificationCard(
            icon: Icons.event,
            title: 'Etkinlik Daveti',
            description: 'Yeni bir etkinlik daveti aldınız.',
            time: '1 hafta önce',
          ),
        ],
      ),
    );
  }

  // Bildirim kartı oluşturan widget
  Widget _buildNotificationCard({
    required IconData icon,
    required String title,
    required String description,
    required String time,
  }) {
    return Card(
      color: const Color(0xFF1E1E1E), // Koyu gri kart arka planı
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 32), // İkon
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 5),
            Text(
              time,
              style: const TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
        isThreeLine: true, // Üç satır görünüme izin verir
      ),
    );
  }
}
