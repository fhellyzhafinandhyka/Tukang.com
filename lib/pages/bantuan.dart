import 'package:flutter/material.dart';
import 'package:tukang_com/widgets/bottom_navigation.dart';

class Bantuan extends StatelessWidget {
  const Bantuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan', style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromARGB(255, 249, 247, 247),
      ),
      body: Center(
        child: Text('Halaman Bantuan'),
      ),
      bottomNavigationBar: BottomNavigasi(selectedItem: 2),
    );
  }
}