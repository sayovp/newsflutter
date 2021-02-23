import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bit/utils/resize.dart';
import 'package:flutter_app_bit/view/widgets/app_button.dart';
import 'package:flutter_app_bit/view/widgets/app_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var _Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(children: [
          Container(
            width: Width,
            height: _Height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, //BoxFit.fill,
                    image: AssetImage('assets/img/fondolog.jpg'),
                    colorFilter:
                        ColorFilter.mode(Colors.white70, BlendMode.hardLight))),
          ),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(
                      top: ResizeH(_Height, 40), left: 25, right: 25),
                  height: _Height * 0.63,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(110, 150),
                          bottomRight: Radius.elliptical(110, 150))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome To",
                        style: GoogleFonts.signika(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Image.asset(
                        'assets/img/logobit.png',
                        width: ResizeH(_Height, 157),
                        height: ResizeH(_Height, 63),
                        fit: BoxFit.contain,
                      ),
                      Text("Please login to continue",
                          style: GoogleFonts.signika(
                              fontSize: ResizeH(_Height, 20),
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: _Height * 0.05,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AppTextField(
                          hintText: 'Username',
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _Height * 0.02,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: AppTextField(
                            hintText: 'Password',
                            icon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            obscureText: true,
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password',
                            style: GoogleFonts.signika(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          )),
                      SizedBox(
                        height: _Height * 0.05,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AppButton(
                          text: 'LOG IN ',
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/newsPage');
                          },
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: _Height * 0.10,
              ),
              Text(
                'OR',
                style: GoogleFonts.signika(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: _Height * 0.10,
              ),
              AppButton(
                text: 'SING UP',
                onPressed: () {},
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
