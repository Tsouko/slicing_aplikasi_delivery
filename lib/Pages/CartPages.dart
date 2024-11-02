import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Widget/NavbarWidget.dart'; 

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 24, color: Colors.black),    
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navbarwidget()),
            );
          },
        ),
        title: Text(
          "Cart",
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.person, color: Colors.black, size: 24),
            onPressed: () {
              // Tambahkan aksi yang diinginkan di sini
            },
          ),
        ],
      ),
      
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('assets/burger.png', fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Burger King Medium",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(CupertinoIcons.trash, size: 24, color: Colors.red),
                        ],
                      ),
                      Text(
                        "Rp.50.000,00",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(CupertinoIcons.minus_circled, size: 24, color: Colors.black),
                          SizedBox(width: 5),
                          Text(
                            "1",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.plus_circled, size: 24, color: Colors.black),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(height: 30),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('assets/teh.png', fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Teh Botol Sosro",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(CupertinoIcons.trash, size: 24, color: Colors.red),
                        ],
                      ),
                      Text(
                        "Rp.4.000,00",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(CupertinoIcons.minus_circle, size: 24, color: Colors.black),
                          SizedBox(width: 5),
                          Text(
                            "1",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.plus_circled, size: 24, color: Colors.black),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(height: 200),
            Divider(color: Colors.black), 
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Belanja",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  "Rp.94.000,00",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 30),
            Divider(color: Colors.grey, thickness: 1),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Pembayaran",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rp.104.000,00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 36, 109, 235),
              ),
              child: Center(
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
