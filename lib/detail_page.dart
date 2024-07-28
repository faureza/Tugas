import 'package:flutter/material.dart';
import 'gallery_page.dart';

class DetailPage extends StatefulWidget {
  final String resep;
  final String detail;

  DetailPage({required this.resep, required this.detail});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> details = [];

  @override
  void initState() {
    super.initState();
    details.add(widget.detail);
  }

  void _addDetail(String newDetail) {
    setState(() {
      details.add(newDetail);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.resep),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: details.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(details[index]),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GalleryPage()),
              );
            },
            child: Text('Lihat Galeri Foto'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  String newDetail = '';
                  return AlertDialog(
                    title: Text('Tambah Detail Resep'),
                    content: TextField(
                      onChanged: (value) {
                        newDetail = value;
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          if (newDetail.isNotEmpty) {
                            _addDetail(newDetail);
                          }
                          Navigator.pop(context);
                        },
                        child: Text('Tambahkan'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Tambah Detail Resep'),
          ),
        ],
      ),
    );
  }
}
