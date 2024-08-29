import 'package:flutter/material.dart';

class BottomNavigasi extends StatefulWidget {
  final int selectedItem;
  BottomNavigasi({super.key, required this.selectedItem});
  
  // get selectedItem => null;

  @override
  State<BottomNavigasi> createState() => _BottomNavigasiState();
}

class _BottomNavigasiState extends State<BottomNavigasi> {
  int selectedNavbar = 0;
  void changeSelectedNavBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/beranda');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/pesanan');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/bantuan');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/akun');

    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.live_help_rounded),
          label: 'Bantuan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Akun',
        ),
      ],
      selectedItemColor: Color.fromARGB(255, 223, 208, 51),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}
 