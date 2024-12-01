import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar layar
    final mediaWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: mediaWidth * 0.03, // Responsif padding vertical
        horizontal: mediaWidth * 0.04, // Responsif padding horizontal
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconButton(
            context,
            CupertinoIcons.bars,
            mediaWidth,
            () {
              // Aksi tombol menu
            },
          ),
          buildIconButton(
            context,
            CupertinoIcons.person,
            mediaWidth,
            () {
              // Aksi tombol profil
            },
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(BuildContext context, IconData icon, double mediaWidth,
      VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(mediaWidth * 0.02), // Responsif padding tombol
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.5),
      ),
      child: Icon(
        icon,
        color: Colors.black,
        size: mediaWidth * 0.06, // Responsif ukuran ikon
      ),
    );
  }
}
