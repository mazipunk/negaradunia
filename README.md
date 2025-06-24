# 🇮🇩 NegaraDunia 🌍

NegaraDunia adalah aplikasi mobile berbasis Flutter yang menampilkan informasi lengkap mengenai negara di dunia, baik berdasarkan lokasi pengguna saat ini maupun hasil pencarian manual. Aplikasi ini mengimplementasikan **navigasi multi-halaman** dengan **tab navigasi** menggunakan `BottomNavigationBar`.

---

## ✨ Fitur Utama

✅ **Beranda Otomatis Berdasarkan Lokasi**
- Mengambil nama negara pengguna saat ini melalui API `ip-api.com`.
- Menampilkan data lengkap negara melalui API `restcountries.com`.

✅ **Halaman Pencarian**
- Pengguna dapat mencari negara mana pun secara manual.
- Menampilkan informasi lengkap negara berdasarkan hasil pencarian.

✅ **Halaman Tentang**
- Menjelaskan deskripsi aplikasi, pembuat, dan versi.

---

## 🌐 API yang Digunakan

1. **[ip-api.com](http://ip-api.com/json)**  
   Digunakan untuk mendeteksi negara pengguna saat ini berdasarkan IP publik.

2. **[REST Countries API](https://restcountries.com/)**  
   Menyediakan informasi lengkap tentang negara seperti:
   - Nama
   - Ibu kota
   - Wilayah
   - Populasi
   - Mata uang
   - Zona waktu
   - Bendera negara

---

## 📱 Navigasi & Struktur

Aplikasi terdiri dari 3 halaman utama, diakses menggunakan `BottomNavigationBar`:

| Halaman     | Ikon     | Deskripsi                            |
|-------------|----------|--------------------------------------|
| Beranda     | 🏠 Home   | Menampilkan negara berdasarkan lokasi |
| Pencarian   | 🔍 Search | Cari negara lain dan lihat detailnya |
| Tentang     | ℹ️ Info   | Info pengembang dan sumber data      |

---

## 🛠 Teknologi

- **Flutter** SDK 3.8+
- **HTTP** package untuk koneksi API
- **StatefulWidget** untuk loading data
- **BottomNavigationBar** untuk navigasi tab
- Clean folder structure: `models/`, `services/`, `pages/`, `widgets/`

---

## 📸 Tampilan Aplikasi (Opsional)
<tambahkan screenshot di sini jika tersedia>

---


## 📱 Unduh APK
[Klik di sini untuk mengunduh](release/app-release.apk)

## 🖼️ Poster Aplikasi
![Poster](poster/poster.jpg)



---
## 🚀 Cara Menjalankan

```bash
flutter pub get
flutter run
