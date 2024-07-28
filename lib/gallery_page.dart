import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Foto'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          // Tambahkan foto-foto di sini
          Container(
            child: Image.asset(
            'images/ayam-geprek.png',
            width: 100,
            height: 100,)
          ),
          Container(
            child: Image.asset(
            'images/5-makanan-enak-dari-indonesia-dan-malaysia-yang-terkenal-enak-5.jpeg',
            width: 100,
            height: 100,)
          ),
          // Tambahkan foto-foto lainnya di sini
        ],
      ),
    );
  }
}
