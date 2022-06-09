import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputText extends StatefulWidget {
  bool hasPass;
  String hint;
  double width;
  TextEditingController? controller;
  IconData? iconData;
  TextInputType? keyboardType;
  InputText(

      {this.hasPass = false,
      this.keyboardType,
        required this.width,
      this.iconData,
      required this.hint,
      this.controller});
  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
              borderSide:
                  BorderSide(color: Colors.blue, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.2), width: 1),
            ),
            prefixIcon: Icon(widget.iconData),
            hintText: widget.hint,
            hintStyle: GoogleFonts.nunito(textStyle: TextStyle(fontSize: 14))),
        onChanged: (val) {},
        textAlign: TextAlign.left,
        obscureText: widget.hasPass,
      ),
    );
  }
}
