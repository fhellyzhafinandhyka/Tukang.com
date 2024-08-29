import 'package:flutter/material.dart';
import 'package:tukang_com/widgets/bottom_navigation.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Akun', style: TextStyle(color: Colors.black),
      ),
      ),
      body: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget> [

            const Spacer(),
            Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text('Fhellyzha', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 300),
                        child: Text('Ubah', style: TextStyle(fontSize:15, color:  Color.fromARGB(255, 153, 162, 153))),
                          )  , 
                        ],
                      ),
                       Row(
                        children: [
                          Text('ffhellyzha@gmail.com', style: TextStyle(color:  Color.fromARGB(255, 0, 0, 0)),),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text('Terverifikasi', style: TextStyle(fontSize:10, color:  Color.fromARGB(255, 13, 205, 19))),
                      )  , 
                        ],
                      ),
                      Row(
                        children: [
                          Text('083166557500', style: TextStyle(color:  Color.fromARGB(255, 0, 0, 0)),),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text('Terverifikasi', style: TextStyle(fontSize:12, color:  Color.fromARGB(255, 13, 205, 19))),
                          )  , 
                        ],
                      ),
                    ],
                  ),
                ],
              ),         
            ),
            ),
            const Spacer(),
            ListTile(
                leading: Icon(Icons.house),
                title: Text("Daftar Alamat"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ListTile(
              leading: Icon(Icons.accessibility_outlined),
              title: Text("Ketentuan Layanan"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Beri penilaian di Play Store                                             Version 4.2.2(196)"),
                ),
            ),
              Container(
                width: 200,
                height: 45,
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 223, 208, 51)),
                  onPressed: () {},
                  child: Text(
                    "Keluar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ),
              )
              
          ],
        ),
        
      ),
      
      bottomNavigationBar: BottomNavigasi(selectedItem: 3),
      
    );
  }
}
