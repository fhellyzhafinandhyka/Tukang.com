import 'package:flutter/material.dart';

class berita extends StatelessWidget {
  berita({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> beritaList = [
    {
      'date': "05 Oct 2021",
      'title': "Era Sudah Digital, ...",
      'subtitle': "Aplikasi tukang.com jasa...",
      'imagePath': "assets/berita1.jpg",
    },
    {
      'date': "28 Apr 2020",
      'title': "Benerin Dulu, Bayarny...",
      'subtitle': "Benerin dulu, Bayarnya...",
      'imagePath': "assets/berita2.jpg",
    },
    {
      'date': "20 Mar 2020",
      'title': "Tukang.com Goes to O...",
      'subtitle': "Event Bersama Community Organization...",
      'imagePath': "assets/berita4.jpg",
    },
    {
      'date': "19 Dec 2019",
      'title': "Tukang.com Surabaya,...",
      'subtitle': "Tukang.com sudah di surabya, lho...",
      'imagePath': "assets/berita5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Berita",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: beritaList.length,
                itemBuilder: (context, index) {
                  final berita = beritaList[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFBF6EE),
                      ),
                      width: 200,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              berita['date'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 8),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 90,
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    berita['imagePath'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              berita['title'],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              berita['subtitle'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                          ],
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
