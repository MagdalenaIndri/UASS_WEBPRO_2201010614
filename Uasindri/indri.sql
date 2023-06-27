-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 07:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indri`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `subjudul` varchar(255) NOT NULL,
  `blog` longtext NOT NULL,
  `waktupost` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `subjudul`, `blog`, `waktupost`, `created_at`, `update_at`) VALUES
(1, 'Tips menghadapi uas atau uts kuliah mahasiswa, offline/online', 'MAHASISWA, TIPS, TIPS MAHASISWA DALAM KULIAH', 'Jelas besar perbedaan antara masa menjadi siswa / siswi SMA dengan menjadi Mahasiswa terutama dalam belajar hingga memahami sebuah mata kuliah Kita seringkali merasa panik saat menjelang UAS atau ujian akhir semester, entah takut akan kesulitan saat mengerjakan soal ataupun takut dengan waktu yang tidak akan cukup. Apalagi kalau kita tidak pernah memperhatikan materi yang telah disajikan dan malah kebingungan pada saat H-1 UAS. untuk mengurangi rasa panik tersebut simak 5 tips agar kamu lebih siap dalam mengahadapi UAS!\r\nBelajar kelompok\r\n\r\nJika kamu kesusahan dalam belajar sendirian carilah teman belajar untuk saling membagi materi, karena melihat orang lain belajar biasanya akan meningkatkan rasa ingin belajar kita juga. Selain itu kita bisa meningkatkan ilmu yang belum pernah kita dengar dari teman yang kita ajak belajar kelompok. Tapi ingat jangan ngerumpi yang tidak penting selama pembelajaran berlangsung karena hal itu akan membuat hilangnya konsentrasi dan motivasi untuk melanjutkan pembelajaran.\r\n\r\nTeknik tanya jawab\r\n\r\nSetelah kamu mempelajari materi untuk ujian cobalah meminta bantuan kepada teman kerabat ataupun keluarga untuk menanyakan kembali materi materi yang telah kamu pelajari, teknik tanya jawab ini dapat melatih ingatan kamu dan membuat kamu lebih yakin dengan apa yang telah kamu pelajari!', '2023-06-22 07:00:00', '2023-06-23 05:40:27', '2023-06-23 07:37:41'),
(2, 'Tips Cara Memilih Laptop yang Cocok untuk Kuliah', 'KOMPUTER, MAHASISWA, TIPS MAHASISWA', 'Pasalnya spesifikasi dari setiap merek itu tidaklah sama, jadi ditakutkan memang tidak muat untuk menyimpan file-file kuliah, ataupun hal lainnya. Nah, untuk menjawab keraguan kamu dalam membeli laptop, silahkan simak  beberapa tips berikut ini.\r\n\r\n1. Perhatikan jumlah budget yang dimiiki\r\n\r\nDalam melakukan cara memilih laptop yang cocok untuk kuliah hal pertama kali yang harus kamu perhatikan ialah budget yang dimiliki. Kemampuan setiao orang berbeda-beda, jadi usahakan kamu tidak terlalu gengsi memiliki laptop dengan harga 3 sampai 4 jutaan.\r\n\r\nPada umumnya laptop yang dibandrol dengan harga sekian ini sudah termasuk lumayan. Artinya spesifikasi dan teknologi yang dibawanya sudah canggih, sehingga tetap nyaman ketika dipakai untuk mengerjakan tugas-tugas kuliah.\r\n\r\n2. Memilih laptop yang spesifikasinya sesuai kebutuhan\r\nLangkah kedua yakni memilih laptop dengan spesifikasi yang paling sesuai dengan kebutuhan. Tentunya hal ini didasari dengan jurusan yang saat ini kamu ambil. Bagi mahasiswa manajamen mungkin laptop yang dibutuhkan ialah memilih RAM 4GB dan VGA minimal 2GB.\r\n\r\nNamun untuk mahasiswa manajemen membeli laptop yang RAM nya dibawah 2Gb pun tidak masalah karena tugasnya mungkin hanya sekedar file-file ringan. Untuk itulah mengapa kamu harus menyesuaikan antara spesifikasi dan kegunaan.\r\n\r\n3. Membeli laptop yang sanggup multitasking\r\nPerlu kamu tahu kemampuan untuk setiap laptop berbeda-beda, semua ini tergantung dengan merek dan sistem yang dibekalkan. Untuk itulah kenapa sangat disarankan kamu mengutamakan laptop dengan spesifikasi yang cukup tinggi untuk melakukan multitasking cukup berat.', '2023-06-22 07:00:00', '2023-06-23 05:40:27', '2023-06-23 04:52:45'),
(3, 'Dampak Positif dan Negatif Perkuliahan Online', 'INSPIRASI, MAHASISWA', 'Pada tahun ini, di seluruh dunia mengalami pandemi Covid-19. Di Indonesia sendiri, pandemi mulai menyebar dan meningkat secara drastis. Yang dimana membuat pemerintah terus mengeluarkan kebijakan baru guna mempersempit penyebaran virus Covid-19 di Indonesia. Indonesia sendiri sudah melakukan berbagai macam upaya yang dikerahkan untuk mengembalikan rutinitas kembali normal seperti sedia kala. Namun, tetap saja seluruh aspek tersebut ikut terimbas. Para pekerja kantoran yang diharuskan untuk work from home, serta sekolah ataupun perkuliahan yang dilakukan dengan learning from home atau daring.\r\n\r\nKuliah daring atau online class menjadi pilihan alternatif kegiatan belajar mengajar perkuliahan di era pandemi ini. Semua kegiatan belajar mengajar seperti diskusi dan presentasi dilakukan dengan online atau daring guna mengupayakan tetap berjalannya aktifitas perkuliahan. Untuk kuliah daring atau online, dosen serta mahasiwa harus menyiapkan perangkat dan aplikasi guna untuk mendukung aktivitas belajar dan mengajar. Aplikasi yang biasanya digunakan adalah zoom, microsoft teams, ataupun google meets. Tetapi, perkuliahan lebih efektif untuk para mahasiswa jika tatap muka. Terutama untuk mahasiswa baru. Karena mahasiswa baru ini masih beradaptasi dari tingkat sekolah ke tingkat univeristas. Yang dimana perbedaan ini sedikit jauh berbeda antara sekolah dengan universitas. Hal ini menimbulkan efek pro dan kontra di kalangan mahasiswa untuk kelas daring ini.\r\nDampak positif atau pro dari pembelajaran online adalah bisa lebih bertanggung jawab dan menghargai waktu. Karena mahasiswa harus bisa mengatur jadwal dengan mandiri dan apabila kita tidak disiplin dengan jadwal yang sudah ditentukan, maka konsekuensinya mahasiswa akan tertinggal perkuliahan online tersebut. Dan Mahasiswa bisa melihat kembali materi-materi perkuliahan yang diajarkan karena dosen biasanya membagikan materi berupa modul atau power point yang dapat didownload. Selain itu, mahasiswa tidak dibuat terburu-buru menuju ke tempat perkuliahan karena hanya mengandalkan smarphone ataupun laptop saja sebagai perantaranya.\r\nDan permasalahan utama dari kuliah online ini adalah sangat bergantung pada internet dan kuota, bila jaringan lambat dan susah sinyal maka proses perkuliahan akan tertinggal dan terganggu saat melakukan pembelajaran atau perkuliahan daring. Seperti yang kita ketahui bahwa tidak semua kota atau pelosok di Indonesia mendapatkan jaringan internet yang bagus dan tentunya belum meratanya akses internet di seluruh indonesia. Dan juga, biaya kuota internet yang mahal membuat pengeluaran menjadi bertambah banyak.\r\n\r\nPembelajaran daring memiliki beberapa dampak terhadap mahasiswa yaitu pembelajaran daring yang masih membingungkan mahasiswa. Mahasiswa menjadi pasif, kurang kreatif dan produktif, serta penumpukan informasi/ konsep pada mahasiswa kurang bermanfaat. Selain itu, mahasiswa bisa mengalami stress yang cukup tinggi. Hal ini dapat menjadi evaluasi untuk Mentri Pendidikan supaya pembelajaran daring dapat diupayakan diterima dengan baik oleh mahasiswa tanpa mengurangi esensi pendidikan itu sendiri. Serta saat ini, pandemi di Indonesia masih menunjukkan grafik kenaikan yang drastis. Sehingga praktisi pendidikan perlu berinovasi lebih dalam melaksanakan pembelajaran agar dapat terus bertahan.', '2023-06-22 07:00:00', '2023-06-23 05:40:27', '2023-06-23 04:53:51'),
(4, '6 Tips Menyimpan Daging Kurban Supaya Tahan Lama dan Tidak Bau!', '6 Tips Menyimpan Daging Kurban Supaya Tahan Lama Dan Tidak Bau!', 'Momen Idul Adha tinggal menghitung hari aja, nih. Di hari raya besar umat muslim ini dijadikan sebagai momen untuk berbagai daging kurban. \r\n\r\nDapat daging kurban melimpah saat Idul Adha? Tentu saja tidak semua kita masak bukan, butuh metode yang tepat agar daging yang kita simpan dapat kita gunakan dalam kondisi masih bagus. Nah ini ada beberapa tips yang bisa kita gunakan supaya daging tahan lebih lama dan tidak bau. Simak tipsnya berikut ini.\r\n\r\n1. Bersihkan daging dari kotoran yang menempel\r\nHome  Life  DIY 6 Tips Menyimpan Daging Kurban Supaya Tahan Lama Dan Tidak Bau!22 Jun 23 | 18:46\r\n6 Tips Menyimpan Daging Kurban Supaya Tahan Lama dan Tidak Bau!\r\nIkuti langkahnya berikut ini, yuk!\r\n6 Tips Menyimpan Daging Kurban Supaya Tahan Lama dan Tidak Bau!ilustrasi daging (pexels.com/Emre Vonal)\r\npratiwi wii	\r\nVerified Writer\r\npratiwi wii Verified Writer\r\n Share to Facebook  Share to Twitter	\r\n\r\nMomen Idul Adha tinggal menghitung hari aja, nih. Di hari raya besar umat muslim ini dijadikan sebagai momen untuk berbagai daging kurban. \r\n\r\nDapat daging kurban melimpah saat Idul Adha? Tentu saja tidak semua kita masak bukan, butuh metode yang tepat agar daging yang kita simpan dapat kita gunakan dalam kondisi masih bagus. Nah ini ada beberapa tips yang bisa kita gunakan supaya daging tahan lebih lama dan tidak bau. Simak tipsnya berikut ini.\r\n\r\n1. Bersihkan daging dari kotoran yang menempel\r\n6 Tips Menyimpan Daging Kurban Supaya Tahan Lama dan Tidak Bau!ilustrasi daging (pexels.com/Julia Filirovska)\r\nSaat mendapatkan daging kurban biasanya akan terdapat beberapa kotoran yang menempel. Hal ini perlu untuk dibersihkan terdahulu sebelum disimpan. \r\n\r\nSebaiknya jangan mencuci daging yang didapat sebelum menyimpannya. Proses pencucian bisa membuat aroma prengus semakin tajam.\r\n\r\nSelain itu, air yang meresap ke dalam serat akan membuat daging lebih mudah rusak. Bisa jadi daging yang dibersihkan tampak bersih, tapi tetap perlu untuk menjaga kebersihan daging dengan membersihkannya di bawah air mengalir. Pastikan air benar-benar bersih karena bakteri akan terbawa oleh air yang masuk ke daging. \r\nTips yang kedua supaya daging tahan lama yaitu keringkan daging sebelum disimpan. Jika sudah dibersihkan dengan air, jangan terburu-buru dimasukkan kulkas.\r\n\r\nDaging yang dalam keadaan basah sebaiknya dikeringkan dulu dengan tisu atau lap hingga mengering jadi terhindar dari berbagai bakteri. Hal ini akan membuat daging bertahan lebih lama. \r\n\r\nSelain itu, daging juga dalam keadaan segar dan tidak bau. Pastikan alat untuk mengelapnya juga bersih. \r\n\r\n3. Poto', '2023-06-22 07:00:00', '2023-06-23 05:40:27', '2023-06-23 05:23:14'),
(5, '5 Alasan Alam Berpengaruh Terhadap Mood dan Kesehatan Mental Kita\r\n', 'Yang suka menikmati keindahan alam, wajib simak!', 'Alam memiliki keajaiban yang tak terbantahkan dalam mempengaruhi mood dan kesehatan mental kita. Keindahan alam yang tak tergantikan dan ketenangan yang disuguhkannya mampu memberikan dampak positif yang signifikan bagi pikiran, tubuh, serta jiwa.\r\n\r\nBukan hanya sebatas keindahan yang memanjakan mata, alam juga memberi dampak yang lebih besar bagi kehidupan, bahkan bisa menjadi peningkat suasana hati yang tadinya buruk menjadi lebih baik.\r\n\r\nLantas, mengapa hal itu bisa terjadi? Berikut ini ada lima alasan mengapa alam berpengaruh terhadap mood dan kesehatan mental kita. Yuk, jaga keaslian dan keasrian alam kita untuk mendapatkan manfaat yang berkepanjangan.\r\n1. Keindahan alam dapat meningkatkan suasana hati\r\nHome  Life  Inspiration 5 Alasan Alam Berpengaruh Terhadap Mood Dan Kesehatan Mental Kita22 Jun 23 | 17:46\r\n5 Alasan Alam Berpengaruh Terhadap Mood dan Kesehatan Mental Kita\r\nYang suka menikmati keindahan alam, wajib simak!\r\n5 Alasan Alam Berpengaruh Terhadap Mood dan Kesehatan Mental Kitailustrasi keluarga menikmati alam (pexels.com/Elina Fairytale)\r\nAndri Yanto	\r\nVerified Writer\r\nAndri Yanto Verified Writer\r\n Share to Facebook  Share to Twitter	\r\n\r\nAlam memiliki keajaiban yang tak terbantahkan dalam mempengaruhi mood dan kesehatan mental kita. Keindahan alam yang tak tergantikan dan ketenangan yang disuguhkannya mampu memberikan dampak positif yang signifikan bagi pikiran, tubuh, serta jiwa.\r\n\r\nBukan hanya sebatas keindahan yang memanjakan mata, alam juga memberi dampak yang lebih besar bagi kehidupan, bahkan bisa menjadi peningkat suasana hati yang tadinya buruk menjadi lebih baik.\r\n\r\nLantas, mengapa hal itu bisa terjadi? Berikut ini ada lima alasan mengapa alam berpengaruh terhadap mood dan kesehatan mental kita. Yuk, jaga keaslian dan keasrian alam kita untuk mendapatkan manfaat yang berkepanjangan.\r\n\r\n1. Keindahan alam dapat meningkatkan suasana hati\r\n5 Alasan Alam Berpengaruh Terhadap Mood dan Kesehatan Mental Kitailustrasi pria mendaki (pexels.com/ANNA B)\r\nManusia pada dasarnya adalah bagian dari alam, dan seringkali kita merasa terputus dari alam dalam kehidupan sehari-hari yang sibuk. Ketika kita menghabiskan waktu di alam, misalnya di taman, pantai, atau pegunungan, kita merasa kembali terhubung dengan alam itu sendiri. Rasa keterhubungan ini dapat memberikan perasaan kedamaian dan kesenangan, dan secara langsung berkontribusi pada peningkatan suasana hati.\r\n\r\nAlam juga memiliki keindahan visual yang luar biasa, seperti pemandangan gunung, air terjun, hutan, dan lautan yang menakjubkan. Melihat pemandangan alam yang indah dapat memicu respons emosional positif dalam diri kita. Keindahan visual tersebut sering kali memancarkan ketenangan, harmoni, dan keajaiban, yang mampu mengangkat semangat dan meningkatkan suasana hati.\r\n', '2023-06-22 07:00:00', '2023-06-23 05:40:27', '2023-06-23 05:24:38'),
(6, 'Historiografi Tradisional: Pengertian dan Karakteristiknya ', 'Fokus pada peristiwa besar', 'Sejarah merupakan bagian penting dari kehidupan manusia. Salah satu elemen penting dalam sejarah adalah historiografi yang menjadi metode penulisan dan pengumpulan data sejarah.\r\n\r\nDalam dunia studi sejarah, historiografi tradisional menjadi salah satu hal yang sangat penting untuk dipelajari. Nah, pada artikel kali ini kamu akan belajar lebih dalam mengenai historiografi tradisional di Indonesia. Simak ulasan di bawah ini, ya!\r\n1. Pengertian historiografi tradisional\r\nHistoriografi tradisional merupakan sebuah metode penulisan sejarah yang banyak dipakai pada masa Hindu Budha sampai kerajaan Islam di tanah air. Metode penulisan ini biasanya sangat subjektif dan bercampur dengan mitos, legenda, dan kekuatan magis. \r\n\r\nBiasanya, historiografi tradisional ditulis pujangga di kalangan kerajaan sebagai kepanjangan tangan dari raja atau penguasa', '2023-06-22 07:00:00', '2023-06-23 05:40:27', '2023-06-23 05:25:39'),
(7, 'Membuat Alert Inputan Berhasil Tersimpan Auto Close, PHP dan MySQL', 'Contoh Gambar Alert Inputan Berhasil Tersimpan Auto Close', 'Membuat alert Input berhasil tersimpan auto close merupakan sebuah source code yang di tempatkan pada  proses penginputan data pada form atau halaman sebuah website. Alert inputan berhasil tersimpan adalah semacam sebuah notifikasi atau  pesan konfirmasi yang disampaikan saat penginputan data telah dilakukan dan berhasil tersimpan. Alert auto close ini merupakan pengembangan sebuah alerts box javascript yang dibuat dengan desain dan tampilan yang lebih menarik sehingga form sebuah inputan website lebih interaktif.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` int(11) NOT NULL,
  `tentang` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`id`, `tentang`) VALUES
(1, 'Hallo Semuanya selamat datang di blog saya. Nama saya Indri Saya adalah seorang mahasiswi smester 2 yang saat ini berkuliah di stiki indonesia.\r\nSaya lahir di Manggarai. Saat ini saya sedang mengelola bisnis F&B milik saya sendiri. Di samping itu, saya juga sedang fokus menulis novel dalam mencapai impian saya untuk menjadi seorang penulis terkenal. Semoga impian saya dapat tercapai. Itu yang dapat saya sampaikan di perkenalan ini. Terima kasih dan semoga harimu menyenangkan Dan Jangan Lupa Pantau Terus Bloq Ku ya teman teman bb\r\n ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
