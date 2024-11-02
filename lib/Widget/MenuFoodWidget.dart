import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuFoodwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          children: [

            Row( 
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 210,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), 
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(80), 
                                child: Image.network('assets/burger.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        Text(
                          "Burger King Medium", 
                          style: GoogleFonts.inter (
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("RP. 50.000,00", style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                            ),),
                            Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 16,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  )),

                         Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 210,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), 
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(80), 
                                child: Image.network('assets/burger.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        Text(
                          "Burger King Medium", 
                          style: GoogleFonts.inter (
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("RP. 50.000,00", style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                            ),),
                            Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 16,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  )),
            ]),
              Row(children: [
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 210,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), 
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(80), 
                                child: Image.network('assets/burger.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        Text(
                          "Burger King Medium", 
                          style: GoogleFonts.inter (
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("RP. 50.000,00", style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                            ),),
                            Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 16,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  )),

                            Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 210,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(80), 
                                child: Image.network('assets/teh.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        Text(
                          "Burger King Medium", 
                          style: GoogleFonts.inter (
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("RP. 4.000,00", style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                            ),),
                            Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 16,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  )),
            ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 210,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(80), 
                                child: Image.network('assets/teh.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        Text(
                          "Burger King Medium", 
                          style: GoogleFonts.inter (
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("RP. 4.000,00", style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                            ),),
                            Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 16,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  )),

                         Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    width: 170,
                    height: 210,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), 
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(80), 
                                child: Image.network('assets/burger.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        Text(
                          "Burger King Medium", 
                          style: GoogleFonts.inter (
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("RP. 50.000,00", style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              fontWeight: FontWeight.normal,
                            ),),
                            Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 16,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  )),
            ]),
          ],
        ),
        
      ),
    );
  }
}
