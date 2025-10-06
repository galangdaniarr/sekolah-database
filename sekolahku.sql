-- 1. Membuat Database Sekolah
CREATE DATABASE sekolah;
USE sekolah;

-- 2. Membuat Tabel & Relasi

-- Tabel siswa
CREATE TABLE siswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

-- Tabel nilai
CREATE TABLE nilai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES siswa(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- 3. Isi Data (INSERT)
INSERT INTO siswa (nama, umur, jurusan) VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'IPS'),
('Eko', 16, 'IPA');

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, 'Matematika', 85),
(1, 'Bahasa Inggris', 90),
(2, 'Matematika', 75),
(2, 'Bahasa Inggris', 88),
(3, 'Matematika', 92),
(3, 'Bahasa Inggris', 89),
(4, 'Matematika', 70),
(4, 'Bahasa Inggris', 78),
(5, 'Matematika', 95),
(5, 'Bahasa Inggris', 93);

-- 4. Query Data (SELECT)

-- a. Tampilkan semua siswa
SELECT * FROM siswa;

-- b. Tampilkan nama siswa dengan jurusan IPA
SELECT nama, jurusan FROM siswa WHERE jurusan = 'IPA';

-- c. Tampilkan nilai rata-rata tiap siswa
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;

-- 5. Update & Delete

-- Update jurusan salah satu siswa (contoh: ubah jurusan Budi menjadi 'Bahasa')
UPDATE siswa
SET jurusan = 'Bahasa'
WHERE nama = 'Budi';

-- Hapus satu data nilai siswa (contoh: hapus nilai Matematika milik Dewi)
DELETE FROM nilai
WHERE siswa_id = 4 AND mata_pelajaran = 'Matematika';


