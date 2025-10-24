import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart'; // (PERUBAHAN 1) Import plugin TTS
import 'home_screen.dart'; // Agar bisa navigasi kembali ke HomeScreen

class ResultScreen extends StatefulWidget {
  final String ocrText;

  const ResultScreen({super.key, required this.ocrText});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late FlutterTts flutterTts; // (PERUBAHAN 2) Deklarasi objek TTS

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts(); // Inisialisasi objek FlutterTts

    // (PERUBAHAN 3) Mengatur bahasa pembacaan ke Bahasa Indonesia
    flutterTts.setLanguage("id-ID");
    flutterTts.setSpeechRate(
      0.5,
    ); // (opsional) atur kecepatan bicara agar nyaman didengar
  }

  // (PERUBAHAN 4) Fungsi untuk membacakan teks hasil OCR
  Future<void> _speakText() async {
    if (widget.ocrText.isNotEmpty) {
      await flutterTts.speak(widget.ocrText);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Tidak ada teks untuk dibacakan.")),
      );
    }
  }

  @override
  void dispose() {
    // (PERUBAHAN 5) Hentikan mesin TTS saat halaman ditutup
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil OCR'),
        actions: [
          // (PERUBAHAN 6) Tambahkan tombol suara di AppBar
          IconButton(
            icon: const Icon(Icons.volume_up),
            tooltip: 'Bacakan teks',
            onPressed: _speakText, // panggil fungsi TTS
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Teks ditampilkan apa adanya tanpa .replaceAll()
          child: SelectableText(
            widget.ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : widget.ocrText,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),

      // (PERUBAHAN 7) FloatingActionButton untuk kembali ke HomeScreen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi balik ke HomeScreen dan hapus semua halaman sebelumnya
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
