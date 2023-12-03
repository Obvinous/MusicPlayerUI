import 'package:flutter/material.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xffedd3cb), //remove this and see the shhhhhittttttt
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            color: Color(0xff6f3d2e),
            spreadRadius: 5,
            blurRadius: 15,
          ),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -5,
              blurRadius: 15,
            )
        ]

      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("images/srv.jpg",fit: BoxFit.fill,)),
    );
  }
}