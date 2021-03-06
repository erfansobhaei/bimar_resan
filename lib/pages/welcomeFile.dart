import 'package:bimarresan/components/nextButton.dart';
import 'package:bimarresan/constants.dart';
import 'package:bimarresan/pages/signIn.dart';
import 'package:bimarresan/components/SlidePageRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    setStatusBar();
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [primaryColor, secondaryColor],
              )),
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  height: 281,
                  width: 500,
                  right: 150,
                  top: 140,
                  child: Transform.rotate(
                      angle: -pi / 4,
                      child: Image.asset('assets/images/ambol.png')),
                ),
                Positioned(
                  right: 20,
                  bottom: MediaQuery.of(context).size.height/2 - 110,
                  child: Text(
                    'به بیمار رسان\nخوش اومدی',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'vazir',
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          blurRadius: 20.0,
                          color: Colors.black45,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
                Positioned(
                    right: -18,
                    bottom: MediaQuery.of(context).size.height/2 - 220,
                    child: NextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, SlideLeftRoute(page: SignInPage()));

//                      Navigator.push(context, Slide(builder: (context) {
//                        return SignInPage();
//                      }));
                      },
                      text: 'بعدی',
                      icon: Icons.arrow_forward_ios,
                      color: Colors.white,
                      contentColor: Colors.black,
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black.withOpacity(0.1),
      statusBarIconBrightness: Brightness.light,
    ));

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
  }
}
