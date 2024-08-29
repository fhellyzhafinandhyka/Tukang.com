import 'package:flutter/material.dart';
import 'package:tukang_com/widgets/atas.dart';

class stackkkk extends StatelessWidget {
  const stackkkk({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        atasss(),
        Padding(
          padding: EdgeInsets.only(top: 140),
          child: Center(
            child: Container(
              height: 150,
              margin: EdgeInsets.only(left: 40, right: 55),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 5,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(250, 218, 94, 1.0),
                              borderRadius:
                                  BorderRadiusDirectional.circular(12),
                            ),
                            child: Icon(Icons.home_max)),
                        SizedBox(height: 8),
                        Text(
                          "Home\nMaintenance",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(250, 218, 94, 1.0),
                              borderRadius:
                                  BorderRadiusDirectional.circular(12),
                            ),
                            child: Icon(Icons.build)),
                        SizedBox(height: 8),
                        Text(
                          "Build And\nRenovate",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(250, 218, 94, 1.0),
                              borderRadius:
                                  BorderRadiusDirectional.circular(12),
                            ),
                            child: Icon(Icons.design_services)),
                        SizedBox(height: 8),
                        Text(
                          "Design\nInspiration",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
