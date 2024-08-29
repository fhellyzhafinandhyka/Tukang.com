import 'package:flutter/material.dart';

class scrollnya extends StatelessWidget {
  scrollnya({Key? key}) : super(key: key);

  final List<String> imagePaths = [
    "assets/tegel.jpg",
    "assets/propan.jpg",
    "assets/indogress.jpg",
    "assets/rabit.jpg",
    "assets/cimb.jpg",
    "assets/jayabard.jpg",
    "assets/aqua.jpg",
    "assets/bfi.jpg",
    "assets/griya.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Official scrollnya Store",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward_ios, 
                    size: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Pesan produk Barang / Jasa dari scrollnya Resmi",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      width: 150,
                      height: 130,
                      child: Center(
                        child: Image.asset(
                          imagePaths[index],
                          height: 70,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
