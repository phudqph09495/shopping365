import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping365/utils/Item/text_field.dart';

import '../../utils/Item/button_1.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
String? user;
String? pass;

   Login() async{
  if(keyForm.currentState!.validate()){

  }
}
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
              Button1(
                  ontap: () {},
                  width: 343,
                  textColor: Colors.white,
                  textButton: 'Đăng nhập',
                  gradient: LinearGradient(colors: [
                    Colors.lightBlueAccent,
                    Colors.blue,
                  ])),
              SizedBox(
                height: 10,
              ),
              Text('Hoặc'),
              SizedBox(
                height: 10.0,
              ),
              Button1(
                  ontap: () {},
                  width: 335,
                  icon: true,
                  IconData: 'Google',
                  textColor: Colors.black.withOpacity(0.2),
                  textButton: 'Đăng nhập với Google',
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  radius: 5),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Button1(
                  ontap: () {},
                  width: 335,
                  icon: true,
                  IconData: 'Facebook',
                  textColor: Colors.black.withOpacity(0.2),
                  textButton: 'Đăng nhập với Facebook',
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  radius: 5),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Quên mật khẩu',
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(fontSize: 14, color: Colors.blue)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text('Bạn chưa có tài khoản  ',
                      style: GoogleFonts.nunito(
                          textStyle:
                              TextStyle(fontSize: 14, color: Colors.black))),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Đăng ký ngay',
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
