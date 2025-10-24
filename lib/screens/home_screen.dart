import 'package:flutter/material.dart';
import 'scan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Utama')),
      body: Center(
        // Sebelumnya menggunakan ElevatedButton, sekarang diganti menjadi ListTile
        child: ListTile(
          // Menambahkan ikon kamera di sebelah kiri (leading)
          leading: const Icon(Icons.camera_alt, color: Colors.blue),

          // Menambahkan teks sesuai instruksi soal
          title: const Text('Mulai Pindai Teks Baru'),

          // Mengganti onPressed (milik ElevatedButton) menjadi onTap (milik ListTile)
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ScanScreen()),
            );
          },
        ),
      ),
    );
  }
}
