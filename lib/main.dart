import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Biodata Diri';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/fira22.jpeg'), 
              TitleSection(
                name: 'FIRA ANDIANI', 
                location: 'Rawalo, Banyumas, Jawa Tengah', 
              ),
              TextSection(description: '''Nama: Fira Andiani
Tempat, Tanggal Lahir: Banyumas, 17 Juni 2002
Jenis Kelamin: Perempuan
Agama: Islam
Alamat: Banjarparakan, Rawalo, Banyumas
Email: firaandiani76@gmail.com
Hobi: Menulis
Kewarganegaraan: Indonesia

Profil Singkat:
Fira Andiani adalah seorang penulis berbakat yang lahir dan dibesarkan di Banyumas, Indonesia. Dengan semangat yang membara dan cinta yang mendalam pada kata-kata, Fira telah membuktikan dirinya sebagai salah satu bakat menulis yang menonjol di kalangan generasinya.

Pendidikan:
Fira mengenyam pendidikan di SMK Teknik Komputer MBM Rawalo sebelum melanjutkan studinya dalam bidang komputer di Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) Widya Utama Purwokerto.

Hobi dan Ketertarikan:
Selain menulis, Fira memiliki minat yang kuat dalam dunia literatur dan seni. Ia menikmati membaca buku-buku bermutu dan senang menghabiskan waktu luangnya dengan menggambar. Selain itu, Fira juga merasa terpanggil untuk menjelajahi dunia melalui perjalanan, mengumpulkan inspirasi dari berbagai budaya dan pengalaman.

Karakteristik:
Fira adalah individu yang penuh semangat, kreatif, dan berdedikasi tinggi. Keberaniannya untuk mengekspresikan diri melalui tulisan dan karya seni menginspirasi banyak orang di sekitarnya. Dengan kepribadian yang hangat dan sikap yang ramah, Fira mudah didekati dan selalu siap membantu orang lain.

Tujuan di Masa Depan:
Fira bermimpi untuk menjadi seorang penulis yang sukses dan menginspirasi melalui karyanya. Ia juga berambisi untuk memberikan kontribusi positif bagi masyarakat melalui tulisan-tulisannya yang memotivasi dan memberi pemahaman yang mendalam tentang kehidupan.

Kontak:
Jika Anda tertarik untuk berkolaborasi atau ingin berkomunikasi lebih lanjut dengan Fira, jangan ragu untuk menghubungi melalui email di firaandiani76@gmail.com.
'''),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '© FIRA ANDIANI - STI202102302',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              const Text('5'),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(
                Icons.tiktok,
                color: const Color.fromARGB(255, 19, 13, 15),
              ),
              SizedBox(width: 8),
              Text(
                'firaandiani_',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(width: 8),
              Text(
                'Fira Andiani',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              SizedBox(width: 8),
              Text(
                '300k',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
