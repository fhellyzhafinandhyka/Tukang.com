import 'package:flutter/material.dart';
import 'package:tukang_com/widgets/bottom_navigation.dart';
import 'package:tukang_com/models/item.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({super.key});

  @override
  State<Pesanan> createState() => _OrderState();
}

class _OrderState extends State<Pesanan> {
  final List<datapesanan> pesanan = [
    datapesanan(
        nama: 'Didit Tekhnik',
        deskripsi: '5758 tekhnik',
        image: 'assets/plnlogo.png',
        waktu: '26/04/2023 06:29',
        Status: 'Menunggu Konfrimasi'),
    datapesanan(
        nama: 'Danish Jaya Teknik',
        deskripsi: 'Danish jaya teknik',
        image: 'assets/ml.jpeg',
        waktu: '26/04/2023 06:29',
        Status: 'Menunggu Konfrimasi'),
    datapesanan(
        nama: 'Free Kuota',
        deskripsi: '',
        image: 'assets/telkomlogo.png',
        waktu: '26/04/2023 06:59',
        Status: 'Menunggu Konfrimasi'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Pesanan dalam proses', style: TextStyle(color: Colors.black,),
      ),
      ),
      body: ListView(
        children: pesanan.map((hasilMapPesanan) {
          return Card(
            child: 
            Padding(padding: EdgeInsets.all(10),
            child:  Row(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(hasilMapPesanan.image))
                     ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(hasilMapPesanan.nama,
                    style: TextStyle(
                    fontSize: 20, 
                    color: Colors.black,
                    fontWeight: FontWeight.bold 
                   ),),
                    Text(hasilMapPesanan.waktu),
                    Row(
                      children: [
                        Text(hasilMapPesanan.deskripsi, style: TextStyle(color: Colors.blue),),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(hasilMapPesanan.Status, style: TextStyle(color: Colors.orange),),
                    )   
                      ],
                    )
                  ],
                ),
              ],
            ),),
          );
        }).toList(),
      ),
      
    bottomNavigationBar: BottomNavigasi(selectedItem: 1),
    );
  }
}