import 'package:flutter/material.dart';
import 'home_screen.dart'; // Ditambahkan agar bisa kembali ke HomeScreen

class ResultScreen extends StatelessWidget {
  final String ocrText;

  const ResultScreen({super.key, required this.ocrText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // PERUBAHAN 1: Menghapus .replaceAll('\n', ' ')
          // agar teks hasil OCR tampil dengan baris baru utuh sesuai aslinya.
          child: SelectableText(
            ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : ocrText, // ← tidak lagi diubah
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),

      // PERUBAHAN 2: Menambahkan FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // PERUBAHAN 3: Navigasi balik ke HomeScreen
          // Menggunakan pushAndRemoveUntil untuk menghapus semua halaman sebelumnya
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (route) => false,
          );
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
