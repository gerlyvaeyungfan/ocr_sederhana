# 🧾 Jobsheet 7 - APLIKASI OCR SEDERHANA DENGAN FLUTTER

**Nama:** Gerly Vaeyungfan  
**NIM:** 2341760195  
**Kelas:** SIB-3C  
**No:** 14  

---

## **Apakah semua teks terbaca dengan akurat? Mengapa?**

Tidak semua teks terbaca dengan akurat. Hal ini karena hasil OCR sangat dipengaruhi oleh kualitas gambar, pencahayaan, jenis dan ukuran font, serta kerataan teks pada gambar. Jika teks miring, kabur, atau memiliki latar belakang yang tidak kontras, maka model OCR sulit mengenali huruf dengan tepat sehingga hasilnya bisa salah atau tidak lengkap.

## **Apa kegunaan fitur OCR dalam kehidupan sehari-hari?**
Fitur OCR (Optical Character Recognition) berguna untuk mengubah teks dari gambar menjadi teks digital yang dapat disalin, diedit, atau disimpan. Dalam kehidupan sehari-hari, OCR sering digunakan untuk:
- Menyalin tulisan dari dokumen cetak tanpa mengetik ulang.
- Membantu pengguna menyimpan catatan atau arsip dokumen dalam bentuk digital.
- Mempermudah penerjemahan teks dari gambar.
- Mendukung aksesibilitas bagi tunanetra dengan pembaca layar.

## **Sebutkan 2 contoh aplikasi nyata yang menggunakan OCR!**
- Google Lens – untuk mengenali teks dari foto, menyalin teks langsung, atau menerjemahkan teks dari bahasa lain.
- Microsoft Office Lens – digunakan untuk memindai dokumen, papan tulis, atau kartu nama menjadi teks digital yang bisa disimpan di OneNote atau Word.

.
.
.

---

# 📱 UTS Pemrograman Mobile - Aplikasi OCR Sederhana

## 📘 Deskripsi Proyek
Aplikasi **OCR Sederhana** ini merupakan proyek praktikum Flutter yang berfungsi untuk **memindai teks dari gambar** menggunakan **kamera perangkat**, kemudian menampilkan hasil teks yang dikenali di layar.  
Aplikasi dikembangkan sebagai bagian dari **UJIAN TENGAH SEMESTER (UTS) Pemrograman Mobile**.

## Perubahan dan Pengembangan yang Dilakukan

Beberapa perubahan dan pengembangan utama yang dilakukan selama praktikum antara lain:

**1. Perbaikan Tampilan Hasil OCR**
- Pada halaman ResultScreen, fungsi `replaceAll('\n', ' ')` dihapus agar hasil teks dapat ditampilkan secara utuh sesuai format baris aslinya.
- Dengan demikian, teks yang terdiri dari beberapa paragraf tetap terbaca dengan baik tanpa kehilangan struktur.

**2. Penambahan Tombol Navigasi ke HomeScreen**
- Ditambahkan sebuah **FloatingActionButton** dengan ikon home pada ResultScreen.
- Tombol ini berfungsi untuk kembali langsung ke halaman utama (HomeScreen) menggunakan metode `Navigator.pushAndRemoveUntil()`, yang akan menghapus semua halaman sebelumnya dari stack navigasi agar pengguna tidak perlu menekan tombol _back_ berkali-kali.

**3. Implementasi Fitur Text-to-Speech (TTS)**
Untuk menambah interaktivitas, aplikasi dilengkapi dengan fitur pembacaan teks menggunakan plugin `flutter_tts`.

- **Inisialisasi TTS:** Plugin diinisialisasi di dalam metode initState() dan diatur agar menggunakan Bahasa Indonesia.

- **Manajemen Sumber Daya:** Pada metode dispose(), mesin TTS dihentikan agar tidak tetap berjalan di latar belakang ketika halaman ditutup.

- **Interaksi Pengguna:** Ditambahkan tombol dengan ikon volume_up untuk memulai pembacaan teks hasil OCR. Saat tombol ditekan, seluruh teks akan dibacakan secara otomatis oleh sistem TTS.

## Hasil Pengujian

Aplikasi berhasil dijalankan di emulator Android. Proses pemindaian teks berjalan dengan baik dan hasil teks tampil sesuai format aslinya.

- Tombol home berfungsi untuk kembali langsung ke halaman utama.
- Fitur TTS mampu membacakan teks dengan pelafalan Bahasa Indonesia yang cukup jelas.
- Tidak ditemukan error atau crash selama pengujian.

