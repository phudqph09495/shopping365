import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping365/utils/Item/text_field.dart';

import '../../utils/Item/button_1.dart';

class Registrantion extends StatefulWidget {
  @override
  State<Registrantion> createState() => _RegistrantionState();
}

class _RegistrantionState extends State<Registrantion> {
  TextEditingController phone = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: keyForm,
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image(
                image: AssetImage("images/logo.jpg"),
              ),
              SizedBox(
                height: 40,
              ),
              InputText(
                hint: 'Họ và tên',
                iconData: Icons.person,
                controller: name,
                width: 343,
              ),
              SizedBox(
                height: 10,
              ),
              InputText(
                hint: 'Số điện thoại',
                iconData: Icons.phone,
                controller: phone,
                width: 343,
              ),
              SizedBox(
                height: 10,
              ),
              InputText(
                width: 343,
                hint: 'Password',
                hasPass: true,
                iconData: Icons.lock,
              ),
              SizedBox(
                height: 10.0,
              ),
              InputText(
                width: 343,
                hint: 'Password again',
                hasPass: true,
                iconData: Icons.lock,
              ),
              SizedBox(
                height: 10.0,
              ),
              Button1(
                  ontap: () {},
                  width: 343,
                  textColor: Colors.white,
                  textButton: 'Đăng ký',
                  gradient: LinearGradient(colors: [
                    Colors.lightBlueAccent,
                    Colors.blue,
                  ])),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text('Đã có tài khoản  ',
                      style: GoogleFonts.nunito(
                          textStyle:
                          TextStyle(fontSize: 14, color: Colors.black))),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Đăng nhập ngay',
                        style: GoogleFonts.nunito(
                            textStyle:
                            TextStyle(fontSize: 14, color: Colors.blue))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
