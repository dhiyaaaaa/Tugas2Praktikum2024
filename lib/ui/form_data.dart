import '/ui/tampil_data.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.teal, // Warna background AppBar
        centerTitle: true, // Pusatkan judul
      ),
      body: SingleChildScrollView( // Menggunakan SingleChildScrollView agar bisa di-scroll
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Masukkan Data Anda",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  color: Colors.teal
                ),
              ),
              const SizedBox(height: 20), // Spasi antar elemen
              _textboxNama(),
              const SizedBox(height: 20),
              _textboxNIM(),
              const SizedBox(height: 20),
              _textboxTahun(),
              const SizedBox(height: 30),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: const TextStyle(color: Colors.teal), // Warna label
        fillColor: Colors.teal[50], // Warna background
        filled: true,
        prefixIcon: const Icon(Icons.person, color: Colors.teal), // Ikon nama
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal), // Warna border
          borderRadius: BorderRadius.circular(15), // Radius border
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal, width: 2), // Border saat fokus
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      controller: _namaController,
      cursorColor: Colors.teal, // Warna kursor
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: const TextStyle(color: Colors.teal),
        fillColor: Colors.teal[50],
        filled: true,
        prefixIcon: const Icon(Icons.badge, color: Colors.teal), // Ikon NIM
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      controller: _nimController,
      cursorColor: Colors.teal,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: const TextStyle(color: Colors.teal),
        fillColor: Colors.teal[50],
        filled: true,
        prefixIcon: const Icon(Icons.calendar_today, color: Colors.teal), // Ikon Tahun
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      controller: _tahunController,
      cursorColor: Colors.teal,
    );
  }

  _tombolSimpan() {
    return SizedBox(
      width: double.infinity, // Agar tombol memenuhi lebar layar
      height: 50,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.save), // Ikon pada tombol
        label: const Text(
          'Simpan',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal, // Warna tombol
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Radius tombol
          ),
        ),
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },

      ),
    );
            child: const Text('Simpan');
  }
}
