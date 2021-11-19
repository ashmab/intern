import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oyelabs/Screens/LoginPage.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.white,
            child:FlutterLogo(size:MediaQuery.of(context).size.height/2)
        ),
        Container(
          child: Text("ELSSA"),
        )
      ],
    );
  }
}
