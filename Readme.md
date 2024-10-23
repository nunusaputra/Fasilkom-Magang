# PORTAL MAGANG FASILKOM

## Table of Contents

- [Cara Penggunaan](#cara-penggunaan)
  - [Preperation](#preperation)
  - [Getting Started](#getting-started)
    - [Backend Setup](#backend-setup)
    - [Frontend Setup](#frontend-setup)

## Cara Penggunaan

Berikut ini merupakan cara installasi dan penggunaan portal magang fasilkom di local.

### Preparation

Sebelum memulai, pastikan Anda telah menginstal hal berikut:

- [Node.js](https://nodejs.org/) (versi terbaru)
- [npm](https://www.npmjs.com/) (biasanya terinstal bersamaan dengan Node.js)
- [Laragon](https://laragon.org/download/)(bisa juga menggunakan XAMPP atau tools lainnya sesuai dengan kebutuhan anda)

### Getting Started

Ikuti langkah-langkah di bawah ini untuk mengatur aplikasi Portal Magang di lingkungan lokal Anda:

### 1. Open Folder

Buka folder hasil ekstrak tadi menggunakan terminal (saya biasanya menggunakan git bash)

---

### 2. Move Backend Directory

Selanjutnya kita akan mengatur backend setup seperti di bawah ini.

#### Backend Setup

**1. Masuk Kedalam Backend Directory**

```bash
cd portal_magang/
```

**2. Install Dependencies Pada Backend Directory**

```bash
npm install
```

**3. Jalankan Aplikasi Backend** <br>
Setelah semua proses selesai, anda bisa menjalankan aplikasi backend ini dengan perintah berikut:

```bash
npm run dev
```

---

### 4. Move Frontend Directory

Selanjutnya kita akan mengatur frontend setup seperti di bawah ini

#### Frontend Setup

**1. Masuk Kedalam Frontend Directory**

```bash
cd internship_portal/
```

**2. Install Dependencies Pada Frontend Directory**

```bash
npm install
```

**3. Build Frontend Directory**

```bash
npm run build
```

**4. Jalankan Aplikasi Frontend**

```bash
npm run dev
```

---