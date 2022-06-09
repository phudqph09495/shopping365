import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping365/utils/Item/rate_button.dart';

class RateScreen extends StatefulWidget {
  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Colors.white,
        title: Text(
          'Đánh giá',
          style: GoogleFonts.nunito(
              textStyle: TextStyle(color: Color(0xff223263))),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black.withOpacity(0.2),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              ButtonRating(textButton: '1'),
              ButtonRating(textButton: '2'),
              ButtonRating(textButton: '3'),
              ButtonRating(textButton: '4'),
              ButtonRating(textButton: '5'),
            ],)
          ],),
        ),
      ),
    );
  }
}
