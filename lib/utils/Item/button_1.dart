import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Button1({
  String? IconData,
  bool icon = false,
  Function()? ontap,
  double height = 52,
  LinearGradient? gradient,
  double radius = 5,
  required double width,
  Border? border,
  required Color textColor,
  required String textButton,
}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: gradient,
        border: border,
      ),
      height: height,
      width: width,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon
              ? Image(image: AssetImage('images/$IconData.png'))
              : SizedBox(
                  width: 57,
                ),
          SizedBox(width: 80,),
          Text(
            textButton,
            style: GoogleFonts.nunito(
                textStyle: TextStyle(fontSize: 14, color: textColor)),
          ),
        ],
      ),
    ),
  );
}
