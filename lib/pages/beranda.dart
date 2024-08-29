
import 'package:flutter/material.dart';
import 'package:tukang_com/widgets/berita.dart';
import 'package:tukang_com/widgets/bottom_navigation.dart';
import 'package:tukang_com/widgets/scrool1.dart';
import 'package:tukang_com/widgets/scrool2.dart';
import 'package:tukang_com/widgets/stack.dart';
import 'package:tukang_com/widgets/tips.dart';

class Beranda extends StatelessWidget {
  Beranda({Key? key}) : super(key: key);

  List<String> texts = [
    'Home \nMaintenance ',
    'Build and \nRenovate ',
    'Design \nInspiration ',
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.build,
    Icons.design_services,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/icon.jpg'),
            ),
            SizedBox(width: 10),
            Text(
              'tukang',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '.com',
              style: TextStyle(
                color: Color.fromARGB(255, 208, 180, 57),
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          stackkkk(),
          SizedBox(height: 25),
          Center(
            child: Container(
              height: 130,
              width: 325,
              child: Image.asset(
                'assets/kloset.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 20),
          scrollnya(),
          SizedBox(height: 20),
          scrollnya2(),
          SizedBox(height: 20),
          Center(
            child: Container(
              height: 130,
              width: 325,
              child: Image.asset(
                'assets/banner 2.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          berita(),
          tipss(),
        ],
      ),
      bottomNavigationBar: BottomNavigasi(selectedItem: 0),
    );
  }
}
