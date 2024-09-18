import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun; // Menghitung umur

    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        centerTitle: true, // Memusatkan judul
        backgroundColor: Colors.teal,
      ),
      body: Center( // Menggunakan Center untuk menempatkan kolom di tengah
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hallo, perkenalkan Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                  textAlign: TextAlign.center, // Memusatkan teks
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
