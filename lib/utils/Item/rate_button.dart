import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ButtonRating({Function()? ontap, required String textButton}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffEBF0FF), width: 1),
      ),
      width: 57,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text(
            textButton,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xff9098B1),overflow: TextOverflow.ellipsis)),
          )
        ],
      ),
    ),
  );
}
