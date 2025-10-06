# 🏫 Database Sekolah

Proyek ini berisi skrip SQL untuk membuat dan mengelola **database sekolah sederhana** menggunakan MySQL.

## 📘 Struktur
- **Tabel siswa:** id, nama, umur, jurusan  
- **Tabel nilai:** id, siswa_id (FK), mata_pelajaran, nilai  

Relasi: `siswa.id → nilai.siswa_id`

## ⚙️ Contoh Query
```sql
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;
🧠 Tujuan
Latihan dasar SQL meliputi:

Pembuatan database & tabel

Relasi Primary–Foreign Key

Query SELECT, JOIN, UPDATE, DELETE

👨‍💻 Nama: Galang Dani A. R.
🆔 NIM: 2213010450
🏫 Kelas: UI/UX DESAIN
🔗 github.com/galangdaniarr