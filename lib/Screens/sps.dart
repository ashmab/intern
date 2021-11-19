
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oyelabs/Screens/LoginPage.dart';
import 'package:oyelabs/Utils.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
const SplashScreen({Key? key}) : super(key: key);

@override
_SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginPage()
            )
        )
    );
  }
  double getHorizontalSize=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 250,bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 0),
                        child: SvgPicture.asset(
                          "assets/Images/logo.svg"

                          ),
                          //fit: BoxFit.cover,
                        ),
                      //),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,right: 20,top: 280

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Powered by Oyelabs",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 14,
                                ),
                                ),

                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: 200,right: 20,top: 0
                            //   ),
                             // child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "WITH LOVE".tr,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18
                                    ),
                                  ),
                                  Icon(Icons.favorite,color: Colors.blueAccent,)
                                ],
                              ),
                           // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
