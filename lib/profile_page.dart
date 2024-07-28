import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String username = 'User';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
      ),
      body: Column(
        children: [
          Text(
            'Nama: $username',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                username = 'New User';
              });
            },
            child: Text('Ubah Nama'),
          ),
          // Tambahkan informasi profil lainnya di sini
        ],
      ),
    );
  }
}
