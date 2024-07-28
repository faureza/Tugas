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
            color: Colors.orange,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.green,
            margin: EdgeInsets.all(4.0),
          ),
          // Tambahkan foto-foto lainnya di sini
        ],
      ),
    );
  }
}
