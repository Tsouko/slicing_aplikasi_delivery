import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllfoodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar layar
    final mediaWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildFoodCategory(
            context,
            "All",
            'assets/burger.png',
            Color.fromARGB(255, 32, 100, 196),
            mediaWidth,
          ),
          buildFoodCategory(
            context,
            "Makanan",
            'assets/burger.png',
            Colors.white,
            mediaWidth,
          ),
          buildFoodCategory(
            context,
            "Minuman",
            'assets/teh.png',
            Colors.white,
            mediaWidth,
          ),
        ],
      ),
    );
  }

  Widget buildFoodCategory(BuildContext context, String title, String imagePath,
      Color bgColor, double mediaWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: mediaWidth * 0.02, // Responsif untuk horizontal padding
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(mediaWidth * 0.02), // Responsif untuk padding
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(mediaWidth * 0.07),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(mediaWidth * 0.05),
              child: SizedBox.fromSize(
                size: Size.fromRadius(mediaWidth * 0.1), // Responsif ukuran gambar
                child: Image.asset(
                  imagePath, // Ganti ke `Image.asset` karena 'assets/' bukan URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: mediaWidth * 0.02), // Responsif jarak antar elemen
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: mediaWidth * 0.035, // Responsif ukuran font
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
