import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Masakan'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Resep Masakan 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(resep: 'Resep Masakan 1', detail: 'Detail Resep Masakan 1')),
              );
            },
          ),
          ListTile(
            title: Text('Resep Masakan 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(resep: 'Resep Masakan 2', detail: 'Detail Resep Masakan 2')),
              );
            },
          ),
          // Tambahkan resep masakan lainnya di sini
        ],
      ),
    );
  }
}
