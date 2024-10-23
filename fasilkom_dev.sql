-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2024 at 01:52 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fasilkom_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `applyjobs`
--

CREATE TABLE `applyjobs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mhsId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `timId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jobId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('applied','shortlisted','accepted','rejected','deleted','canceled','finished') NOT NULL DEFAULT 'applied',
  `dateOfApply` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateOfJoining` datetime DEFAULT NULL,
  `sop` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applyjobs`
--

INSERT INTO `applyjobs` (`id`, `mhsId`, `timId`, `jobId`, `status`, `dateOfApply`, `dateOfJoining`, `sop`, `createdAt`, `updatedAt`) VALUES
('4adeda6d-80db-47b2-b7fc-5fd6497fb612', '4218ea81-2ae2-4e09-8113-86856f6c4745', '2377e9c4-7c43-4455-adb3-a4519f661fb7', '502f48f1-cf89-43c6-a28b-6ca0e4494abe', 'canceled', '2024-10-21 15:54:35', NULL, 'Saya ingin magang disini', '2024-10-21 15:54:35', '2024-10-21 15:57:23'),
('4b3db4dc-f788-4218-a1b8-9822558c623d', '4218ea81-2ae2-4e09-8113-86856f6c4745', '2377e9c4-7c43-4455-adb3-a4519f661fb7', 'ead4dec7-7a07-410a-924e-534e7de3c366', 'accepted', '2024-10-21 15:55:05', '2024-10-21 15:57:22', 'Saya ingin magang disini juga', '2024-10-21 15:55:05', '2024-10-21 15:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `bobots`
--

CREATE TABLE `bobots` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `disiplin` float DEFAULT NULL,
  `sikap` float DEFAULT NULL,
  `tanggung_jawab` float DEFAULT NULL,
  `kehadiran` float DEFAULT NULL,
  `tata_tertib` float DEFAULT NULL,
  `penampilan` float DEFAULT NULL,
  `kemampuan_kerja` float DEFAULT NULL,
  `keterampilan_kerja` float DEFAULT NULL,
  `kualitas_kerja` float DEFAULT NULL,
  `kemampuan_berkomunikasi` float DEFAULT NULL,
  `kerjasama` float DEFAULT NULL,
  `kerajinan` float DEFAULT NULL,
  `percaya_diri` float DEFAULT NULL,
  `relevansi` float DEFAULT NULL,
  `isi_laporan` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `nilaiId` varchar(255) DEFAULT NULL,
  `mhsId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bobots`
--

INSERT INTO `bobots` (`id`, `disiplin`, `sikap`, `tanggung_jawab`, `kehadiran`, `tata_tertib`, `penampilan`, `kemampuan_kerja`, `keterampilan_kerja`, `kualitas_kerja`, `kemampuan_berkomunikasi`, `kerjasama`, `kerajinan`, `percaya_diri`, `relevansi`, `isi_laporan`, `total`, `nilaiId`, `mhsId`, `userId`, `createdAt`, `updatedAt`) VALUES
('4f4a62bb-a987-434e-9c35-97f3986f2094', 3.85, 3.8, 4.35, 3.35, 3.9, 2.75, 3.8, 3.9, 3.9, 3.8, 4.35, 3.9, 3.9, 6.7, 25, 81.25, '5ad27257-37e0-4f31-ac43-cd9f5e16ef64', '4218ea81-2ae2-4e09-8113-86856f6c4745', '54d31682-5b2b-4fb8-9420-1e369ccfeb52', '2024-10-22 01:18:20', '2024-10-22 01:19:47'),
('bc0bf316-c759-4b23-8f96-1ef33c892413', 3.9, 4.35, 3.9, 3.35, 3.9, 3.85, 4.35, 3.8, 3.8, 3.35, 3.35, 3.8, 3.8, 7.8, 25, 82.3, '56eb328d-4d09-4075-8d9f-e8b8cae59fae', '4218ea81-2ae2-4e09-8113-86856f6c4745', 'b49a4de5-afa4-44a0-ae65-abc1c6d5cc53', '2024-10-22 01:23:35', '2024-10-22 01:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `dosenpembimbings`
--

CREATE TABLE `dosenpembimbings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nama` varchar(255) NOT NULL,
  `npm` varchar(255) NOT NULL,
  `surat_covid` varchar(255) NOT NULL,
  `surat_balasan` varchar(255) NOT NULL,
  `tempat_magang` varchar(255) NOT NULL,
  `alamat_magang` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `kontak_pic` varchar(255) NOT NULL,
  `latitude_magang` varchar(255) NOT NULL,
  `longitude_magang` varchar(255) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `bidang_minat` enum('Software Engineering','Computer Network','Data Science') NOT NULL,
  `rencana_magang` text NOT NULL,
  `status` enum('waiting','accepted','rejected') DEFAULT 'waiting',
  `mhsId` varchar(255) DEFAULT NULL,
  `dospemId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosenpembimbings`
--

INSERT INTO `dosenpembimbings` (`id`, `nama`, `npm`, `surat_covid`, `surat_balasan`, `tempat_magang`, `alamat_magang`, `pic`, `kontak_pic`, `latitude_magang`, `longitude_magang`, `tgl_mulai`, `tgl_selesai`, `bidang_minat`, `rencana_magang`, `status`, `mhsId`, `dospemId`, `createdAt`, `updatedAt`) VALUES
('15eed712-5782-4837-adf8-8291fa5a25b4', 'Wisnu Saputra', '2010631170126', 'https://google.drive/SuratCovid.pdf', 'https://google.drive/SuratBalasan.pdf', 'PT. ImpactByte Teknologi Edukasi', 'Jl. Jendral Sudirman, Jakarta Selatan', 'Ismail Fajar', '081322022050', '-6.224532326012708', '106.80549783549778', '2024-10-21 00:00:00', '2024-10-30 00:00:00', 'Software Engineering', 'Membuat website menggunakan bahasa pemrogramman javascript', 'accepted', '4218ea81-2ae2-4e09-8113-86856f6c4745', '54d31682-5b2b-4fb8-9420-1e369ccfeb52', '2024-10-21 15:35:46', '2024-10-21 15:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `desc` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `title`, `author`, `desc`, `createdAt`, `updatedAt`) VALUES
('3c0c62d0-b038-4c07-9a2c-674d3f2da75e', 'Apply Magang Mahasiswa', 'Fasilkom Unsika', '<p>Bagi mahasiswa yang status permohonan magang nya sudah disetujui oleh kaprodi, dan sudah mendapatkan surat rekomendasi dari TU, silahkan anda dapat melampirkan link surat rekomendasi tersebut pada halaman profile. Hal ini berguna agar anda dapat mendaftar pada lowongan magang yang tersedia di website portal magang ini.</p>', '2024-10-21 15:04:17', '2024-10-22 00:16:19'),
('8244d978-094f-445f-9fd8-86d4493e5288', 'Tata Cara Membuat Akun Magang', 'Fasilkom Unsika', '<p><strong>Berikut ini adalah tata cara dalam pembuatan akun magang Fasilkom Unsika:</strong></p><p><br></p><ol><li>Buka website portal magang</li><li>Pilih menu <em>Getting Started </em></li><li>Klik button <em>I am student</em></li><li>Jika anda belum memiliki akun, maka silahkan klik register</li><li>Isi semua form yang ada</li><li>Setelah berhasil melakukan register, maka akan diarahkan ke halaman login</li><li>Login menggunakan akun yang anda buat</li><li>Selesai</li></ol><p><br></p><p>Cara diatas merupakan tutorial untuk membuat akun magang Fasilkom Unsika.</p>', '2024-10-21 14:54:37', '2024-10-21 14:54:37'),
('b5b71197-eb15-44b2-b4c1-e583eaabf147', 'Cara Mendapatkan Surat Rekomendasi Magang', 'Fasilkom Unsika', '<p>Untuk mendapatkan <strong>surat rekomendasi</strong> magang, kalian silahkan mengajukan <strong>permohonan magang</strong> terlebih dahulu yang terdapat pada <strong>dashboard mahasiswa</strong>. Selanjutnya permohonan tersebut akan di <strong>review oleh kaprodi</strong>, apabila kaprodi menyetujui permohonan anda, maka surat rekomendasi akan segera dibuat dan <strong>dibagikan melalui halaman informasi yang terdapat pada website ini</strong>.</p>', '2024-10-21 14:59:09', '2024-10-21 14:59:09'),
('ca34d22d-a95e-457c-a873-6dfb1910f08f', 'Logbook Magang ', 'Fasilkom Unsika', '<p>Bagi mahasiswa yang sedang menjalankan kegiatan magang, baik itu magang reguler maupun kompetensi, <strong>diwajibkan untuk mengisi logbook magang </strong>untuk proses monitoring kegiatan magang mahasiswa.</p>', '2024-10-21 15:01:51', '2024-10-21 15:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `jobTitle` varchar(255) NOT NULL,
  `maxApplicants` int NOT NULL,
  `maxPositions` int NOT NULL,
  `acceptedCandidates` int DEFAULT '0',
  `jobType` varchar(255) NOT NULL,
  `salary` int NOT NULL,
  `skillSet` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `jobPost` datetime NOT NULL,
  `deadline` datetime NOT NULL,
  `desc` text NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobTitle`, `maxApplicants`, `maxPositions`, `acceptedCandidates`, `jobType`, `salary`, `skillSet`, `duration`, `jobPost`, `deadline`, `desc`, `userId`, `createdAt`, `updatedAt`) VALUES
('502f48f1-cf89-43c6-a28b-6ca0e4494abe', 'Backend Developer Intern', 10, 5, 0, 'Internship', 3000000, 'Node JS, Express JS, Typescript', '4', '2024-10-21 00:00:00', '2024-10-24 00:00:00', '<h3><strong>Backend Developer Intern - Job Requirements</strong></h3><p><br></p><h4><strong>Job Description:</strong></h4><p>As a Backend Developer Intern, you will work closely with our development team to build, enhance, and maintain backend systems that power our applications. You will gain hands-on experience in backend development, databases, and APIs, contributing to real-world projects.</p><p><br></p><h4><strong>Responsibilities:</strong></h4><ul><li>Collaborate with the development team to build and maintain server-side logic, databases, and APIs.</li><li>Develop and integrate RESTful APIs with frontend applications.</li><li>Write efficient, reusable, and scalable code for backend components.</li><li>Assist in debugging, testing, and improving existing backend code.</li><li>Participate in code reviews and collaborate on best practices.</li><li>Ensure the security and performance of backend services.</li></ul><p><br></p><h4><strong>Requirements:</strong></h4><ul><li><strong>Educational Background:</strong></li><li class=\"ql-indent-1\">Currently pursuing or recently graduated with a degree in Computer Science, Information Technology, Software Engineering, or a related field.</li><li><strong>Technical Skills:</strong></li><li class=\"ql-indent-1\">Proficiency in at least one backend programming language: JavaScript (Node.js), Python, Java, or Ruby.</li><li class=\"ql-indent-1\">Experience with web frameworks such as Express.js, Flask, or Django.</li><li class=\"ql-indent-1\">Familiarity with RESTful API development and integration.</li><li class=\"ql-indent-1\">Basic understanding of database systems: MySQL, PostgreSQL, or MongoDB.</li><li class=\"ql-indent-1\">Knowledge of version control systems like Git.</li><li class=\"ql-indent-1\">Understanding of security principles and how they apply to backend development (e.g., JWT, OAuth, etc.).</li><li><strong>Nice to Have:</strong></li><li class=\"ql-indent-1\">Experience working with cloud platforms (e.g., AWS, Google Cloud, or Azure).</li><li class=\"ql-indent-1\">Familiarity with containerization tools like Docker.</li><li class=\"ql-indent-1\">Understanding of CI/CD processes and tools.</li><li class=\"ql-indent-1\">Basic knowledge of frontend technologies for better integration.</li><li><strong>Soft Skills:</strong></li><li class=\"ql-indent-1\">Strong problem-solving and analytical skills.</li><li class=\"ql-indent-1\">Ability to work independently and in a team environment.</li><li class=\"ql-indent-1\">Willingness to learn and adapt to new technologies quickly.</li><li class=\"ql-indent-1\">Good communication skills for clear collaboration with team members.</li><li><strong>Work Commitment:</strong></li><li class=\"ql-indent-1\">Available to work <strong>X hours per week</strong> for the internship duration.</li><li class=\"ql-indent-1\">Comfortable working in a <strong>remote/in-office</strong> environment.</li></ul><h4><strong>Perks:</strong></h4><ul><li>Hands-on experience in backend development with real-world projects.</li><li>Mentorship and guidance from senior developers.</li><li>Opportunity to learn about the entire software development lifecycle.</li><li>Potential for full-time employment based on performance.</li></ul><p><br></p>', '2377e9c4-7c43-4455-adb3-a4519f661fb7', '2024-10-21 15:50:06', '2024-10-21 15:50:06'),
('ead4dec7-7a07-410a-924e-534e7de3c366', 'Frontend Developer Intern', 5, 2, 1, 'Internship', 2000000, 'React JS, Javascript, Tailwindcss', '5', '2024-10-21 00:00:00', '2024-10-31 00:00:00', '<h3><strong>Frontend Developer Intern - Requirements</strong></h3><p><br></p><h4><strong>Job Description:</strong></h4><p>As a Frontend Developer Intern, you will work closely with our development team to create responsive and engaging web interfaces. You will gain hands-on experience in building and maintaining the frontend of our web applications, ensuring user-friendly designs and functionality.</p><p><br></p><h4><strong>Key Responsibilities:</strong></h4><ul><li>Collaborate with the design and backend teams to implement new features</li><li>Develop, test, and optimize web applications for performance and scalability</li><li>Maintain and improve existing codebase with clean and efficient code</li><li>Ensure the technical feasibility of UI/UX designs</li><li>Participate in code reviews and learn from experienced developers</li><li>Debug and fix any frontend-related issues or bugs</li><li>Stay up-to-date with the latest trends and best practices in frontend development</li></ul><p><br></p><h4><strong>Requirements:</strong></h4><ul><li><strong>Educational Background</strong>:</li><li class=\"ql-indent-1\">Currently enrolled in a Bachelor\'s degree program in Computer Science, Informatics, Information Technology, or a related field</li><li><strong>Technical Skills</strong>:</li><li class=\"ql-indent-1\">Basic knowledge of <strong>HTML5, CSS3, JavaScript</strong></li><li class=\"ql-indent-1\">Familiarity with <strong>React.js</strong> or another modern JavaScript framework</li><li class=\"ql-indent-1\">Understanding of <strong>responsive design</strong> principles and CSS frameworks like <strong>Tailwind CSS</strong> or <strong>Bootstrap</strong></li><li class=\"ql-indent-1\">Experience with version control systems like <strong>Git</strong></li><li class=\"ql-indent-1\">Familiarity with <strong>RESTful APIs</strong> and working with data fetching</li><li class=\"ql-indent-1\">Knowledge of <strong>debugging tools</strong> (browser developer tools)</li><li><strong>Soft Skills</strong>:</li><li class=\"ql-indent-1\">Willingness to learn and adapt to new technologies</li><li class=\"ql-indent-1\">Strong attention to detail and design aesthetics</li><li class=\"ql-indent-1\">Excellent problem-solving skills</li><li class=\"ql-indent-1\">Ability to work in a collaborative team environment</li><li class=\"ql-indent-1\">Strong communication skills, both verbal and written</li><li><br></li></ul><h4><strong>Preferred (but not required)</strong>:</h4><ul><li>Experience with <strong>Redux</strong> or other state management libraries</li><li>Understanding of <strong>Webpack</strong> or <strong>Vite</strong></li><li>Familiarity with <strong>SASS/SCSS</strong> or other CSS preprocessors</li><li>Basic knowledge of frontend testing (e.g., Jest, Cypress)</li><li>Understanding of <strong>SEO best practices</strong> for web development</li><li>Familiarity with <strong>TypeScript</strong> for typed JavaScript development</li></ul><p><br></p><h4><strong>What We Offer</strong>:</h4><ul><li>Opportunity to learn from experienced developers and be part of a dynamic team</li><li>Hands-on experience with live projects and real-world challenges</li><li>Flexible working hours with a possibility of remote work</li><li>Mentorship and guidance for your professional development</li><li>Potential for full-time employment upon successful completion of the internship</li></ul><p><br></p>', '2377e9c4-7c43-4455-adb3-a4519f661fb7', '2024-10-21 15:53:59', '2024-10-21 15:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `laporanmagangs`
--

CREATE TABLE `laporanmagangs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `npm` varchar(255) DEFAULT NULL,
  `dosen_pembimbing` varchar(255) DEFAULT NULL,
  `tempat_magang` varchar(255) DEFAULT NULL,
  `alamat_magang` varchar(255) DEFAULT NULL,
  `longitude_magang` varchar(255) DEFAULT NULL,
  `latitude_magang` varchar(255) DEFAULT NULL,
  `lembar_pengesahan` varchar(255) DEFAULT NULL,
  `laporan_magang` varchar(255) DEFAULT NULL,
  `dokumentasi` varchar(255) DEFAULT NULL,
  `status` enum('waiting','accepted','revision') DEFAULT 'waiting',
  `comment` text,
  `mhsId` varchar(255) DEFAULT NULL,
  `dospemId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `laporanmagangs`
--

INSERT INTO `laporanmagangs` (`id`, `nama`, `npm`, `dosen_pembimbing`, `tempat_magang`, `alamat_magang`, `longitude_magang`, `latitude_magang`, `lembar_pengesahan`, `laporan_magang`, `dokumentasi`, `status`, `comment`, `mhsId`, `dospemId`, `createdAt`, `updatedAt`) VALUES
('0de272a1-a2b5-4b75-8ded-61e0692c965c', 'Wisnu Saputra', '2010631170126', 'Budi Gunawan', 'PT. ImpactByte Teknologi Edukasi', 'Jl. Jendral Sudirman', '106.80549783549778', '-6.224532326012708', 'https://google.drive/lembarPengesahan.pdf', 'https://google.drive/laporan_Magang_FIX.pdf', 'https://google.drive/dokumentasi.mov', 'accepted', NULL, '4218ea81-2ae2-4e09-8113-86856f6c4745', '54d31682-5b2b-4fb8-9420-1e369ccfeb52', '2024-10-22 01:13:37', '2024-10-22 01:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `logbooks`
--

CREATE TABLE `logbooks` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text,
  `dateOfPosting` datetime DEFAULT NULL,
  `comment` text,
  `status` enum('waiting','accepted','revision') DEFAULT 'waiting',
  `userId` varchar(255) DEFAULT NULL,
  `dospemId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logbooks`
--

INSERT INTO `logbooks` (`id`, `title`, `desc`, `dateOfPosting`, `comment`, `status`, `userId`, `dospemId`, `createdAt`, `updatedAt`) VALUES
('da37c517-bed2-46c2-b5b7-952d4297cca0', 'Hari Pertama Magang', 'Hari ini tidak ada kegiatan apapun selama magang sxfsfdsdf', '2024-10-22 00:00:00', NULL, 'accepted', '4218ea81-2ae2-4e09-8113-86856f6c4745', '54d31682-5b2b-4fb8-9420-1e369ccfeb52', '2024-10-21 16:04:08', '2024-10-22 01:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `magangkompetensis`
--

CREATE TABLE `magangkompetensis` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `npm` varchar(255) DEFAULT NULL,
  `anggota` varchar(255) DEFAULT NULL,
  `nama_kompetisi` varchar(255) DEFAULT NULL,
  `tingkat_kompetisi` varchar(255) DEFAULT NULL,
  `tanggal_kompetisi` varchar(255) DEFAULT NULL,
  `linkWeb` varchar(255) DEFAULT NULL,
  `bidang_minat` enum('software','network','data') NOT NULL,
  `status` enum('waiting','accepted','rejected') DEFAULT 'waiting',
  `mhsId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `magangkompetensis`
--

INSERT INTO `magangkompetensis` (`id`, `nama`, `npm`, `anggota`, `nama_kompetisi`, `tingkat_kompetisi`, `tanggal_kompetisi`, `linkWeb`, `bidang_minat`, `status`, `mhsId`, `createdAt`, `updatedAt`) VALUES
('f8c2e596-10c7-4682-b294-947542b76cb8', 'Wisnu Saputra', '2010631170126', '', 'Hackaton Malaydesh', 'Internasional', '02 Oktober 2024 - 10 November 2024', 'https://google.com', 'software', 'rejected', '4218ea81-2ae2-4e09-8113-86856f6c4745', '2024-10-21 14:43:14', '2024-10-21 15:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `magangregulers`
--

CREATE TABLE `magangregulers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `npm` varchar(255) DEFAULT NULL,
  `ttl` datetime DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `penerima_surat` varchar(255) DEFAULT NULL,
  `alamat_perusahaan` varchar(255) DEFAULT NULL,
  `no_telpon_perusahaan` varchar(255) DEFAULT NULL,
  `jenis_perusahaan` varchar(255) DEFAULT NULL,
  `desc` text,
  `status` enum('waiting','accepted','rejected') DEFAULT 'waiting',
  `mhsId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `magangregulers`
--

INSERT INTO `magangregulers` (`id`, `nama`, `npm`, `ttl`, `agama`, `alamat`, `no_telpon`, `nama_perusahaan`, `penerima_surat`, `alamat_perusahaan`, `no_telpon_perusahaan`, `jenis_perusahaan`, `desc`, `status`, `mhsId`, `createdAt`, `updatedAt`) VALUES
('3136de09-ec3b-42ce-a742-1b3ceea6e12c', 'Wisnu Saputra', '2010631170126', '2001-11-16 00:00:00', 'Islam', 'Rengasdengklok, Karawang, Jawa Barat', '083815499134', 'PT. ImpactByte Teknologi Edukasi', 'Ismail Fajar', 'Jl. Jendral Sudirman, Jakarta Selatan', '0823211237662', 'Online Edu Tech', 'Membuat sebuah website menggunakan stack Javascript', 'accepted', '4218ea81-2ae2-4e09-8113-86856f6c4745', '2024-10-21 14:38:07', '2024-10-21 15:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_pict` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `npm` varchar(255) NOT NULL,
  `tgl_lahir` datetime NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `linkRekom` varchar(255) DEFAULT NULL,
  `linkCV` varchar(255) DEFAULT NULL,
  `desc` text,
  `refresh_token` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `name`, `email`, `password`, `profile_pict`, `prodi`, `semester`, `npm`, `tgl_lahir`, `alamat`, `no_hp`, `linkRekom`, `linkCV`, `desc`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
('4218ea81-2ae2-4e09-8113-86856f6c4745', 'Wisnu Saputra', 'nunusaputra17@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$mdzDuU/YBEq7rKWVKKdRbQ$IBCWx3OpuWm+BSXd6BZAu/cPE4gePzTF9iP04OJ9L0Y', NULL, 'Informatika', '7', '2010631170126', '2001-11-16 00:00:00', 'Jl. Bojong Karya 1, rt/rw 001/001, Kel. Rengasdengklok Selatan, Kec. Rengasdengklok, Karawang, Jawa Barat, 41352', '083815499134', 'https://id.pinterest.com/pin/700169073338629677/', 'https://drive.google.com/file/d/1tH5WiiPNIzCcLToqdUpKtTZrWvsf75bt/view?usp=drive_link', 'I am Wisnu Saputra, a graduate of Universitas Singaperbangsa Karawang with a degree in Informatics and a GPA of 3.90. As a full-stack developer, I am profcient in JavaScript and frameworks such as React JS, Node JS, and Express JS. I have the ability to develop efcient and responsive web applications and am committed to continuously learning and contributing to the technology industry.', NULL, '2024-10-21 14:32:26', '2024-10-22 02:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE `nilais` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `disiplin` int DEFAULT NULL,
  `sikap` int DEFAULT NULL,
  `tanggung_jawab` int DEFAULT NULL,
  `kehadiran` int DEFAULT NULL,
  `tata_tertib` int DEFAULT NULL,
  `penampilan` int DEFAULT NULL,
  `kemampuan_kerja` int DEFAULT NULL,
  `keterampilan_kerja` int DEFAULT NULL,
  `kualitas_kerja` int DEFAULT NULL,
  `kemampuan_berkomunikasi` int DEFAULT NULL,
  `kerjasama` int DEFAULT NULL,
  `kerajinan` int DEFAULT NULL,
  `percaya_diri` int DEFAULT NULL,
  `relevansi` int DEFAULT NULL,
  `isi_laporan` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `mhsId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nilais`
--

INSERT INTO `nilais` (`id`, `disiplin`, `sikap`, `tanggung_jawab`, `kehadiran`, `tata_tertib`, `penampilan`, `kemampuan_kerja`, `keterampilan_kerja`, `kualitas_kerja`, `kemampuan_berkomunikasi`, `kerjasama`, `kerajinan`, `percaya_diri`, `relevansi`, `isi_laporan`, `total`, `mhsId`, `userId`, `createdAt`, `updatedAt`) VALUES
('56eb328d-4d09-4075-8d9f-e8b8cae59fae', 78, 87, 78, 67, 78, 77, 87, 76, 76, 67, 67, 76, 76, 78, 100, 1168, '4218ea81-2ae2-4e09-8113-86856f6c4745', 'b49a4de5-afa4-44a0-ae65-abc1c6d5cc53', '2024-10-22 01:23:35', '2024-10-22 01:24:17'),
('5ad27257-37e0-4f31-ac43-cd9f5e16ef64', 77, 76, 87, 67, 78, 55, 76, 78, 78, 76, 87, 78, 78, 67, 100, 1158, '4218ea81-2ae2-4e09-8113-86856f6c4745', '54d31682-5b2b-4fb8-9420-1e369ccfeb52', '2024-10-22 01:18:20', '2024-10-22 01:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240319131847-create-user.js'),
('20240319132126-create-mahasiswa.js'),
('20240319132159-create-logbook.js'),
('20240319132303-create-laporan-magang.js'),
('20240319132340-create-job.js'),
('20240319132408-create-information.js'),
('20240319132434-create-dosen-pembimbing.js'),
('20240319132458-create-apply-job.js'),
('20240909014226-create-magang-reguler.js'),
('20240909015458-create-magang-kompetensi.js'),
('20240911140127-create-nilai.js'),
('20240911140305-create-bobot.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `desc` text,
  `refresh_token` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile`, `alamat`, `no_telpon`, `role`, `desc`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
('07389ac4-4d26-44b4-a081-d3a7c00003a8', 'Ahmad Latief', 'ahmad_latief@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Yaejsme7Hta6GnG+Bl2uAw$T9X0qE+VTvlzHB/R6FxG2bD21sKHXFvUS6GWx8Gt2xs', NULL, NULL, NULL, 'kaprodi', NULL, NULL, '2024-10-21 15:06:18', '2024-10-21 15:45:45'),
('1c8d8b9d-7b7d-4c7b-8a7b-6a7b5a7b5a7b', 'Official Fasilkom', 'magangfasilkom@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$e5CAwmJZgIeoL56BTEd75Q$YSHViDdPu3VxBY6vwnceISM/mle+DMr/4VRsysXBJIk', 'http://res.cloudinary.com/dtynqubkl/image/upload/v1729523409/vl84vf7kzhlyvlanm5rt.png', 'Jl. H. Ronggo Waluyo, Teluk Jambe, Karawang, Jawa Barat', '082322392212', 'admin', 'Akun resmi Fasilkom Unsika', NULL, '2024-10-21 14:25:27', '2024-10-22 01:10:07'),
('2377e9c4-7c43-4455-adb3-a4519f661fb7', 'Tim Magang', 'tim_magang@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$6JacOko5aaAENGztpxLGhw$AXMLTqD1a0rM+oHzJiu6cpYmj5CM6xXxsacvfxcpzDM', NULL, NULL, NULL, 'tim-magang', NULL, NULL, '2024-10-21 15:08:16', '2024-10-21 16:05:15'),
('54d31682-5b2b-4fb8-9420-1e369ccfeb52', 'Budi Gunawan', 'budigun@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Cx5f8/+Ne8w0xVIun0Mt+g$F4Dw28chCFvVA3vIaffjEunX+Zd8hgcXXoA2pTA3Kj0', NULL, NULL, NULL, 'dospem', NULL, NULL, '2024-10-21 15:07:37', '2024-10-22 01:21:39'),
('b49a4de5-afa4-44a0-ae65-abc1c6d5cc53', 'Skilvul', 'markoding@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Uz7cihtjQtfMP4XGE0bhlA$SPCXhHrLbJC8TdpG0dk1V7Fv2vYnDNuk/07qBX1LDiA', NULL, NULL, NULL, 'mitra', NULL, NULL, '2024-10-21 15:09:27', '2024-10-22 01:27:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applyjobs`
--
ALTER TABLE `applyjobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobots`
--
ALTER TABLE `bobots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosenpembimbings`
--
ALTER TABLE `dosenpembimbings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporanmagangs`
--
ALTER TABLE `laporanmagangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logbooks`
--
ALTER TABLE `logbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magangkompetensis`
--
ALTER TABLE `magangkompetensis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magangregulers`
--
ALTER TABLE `magangregulers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
