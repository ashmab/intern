import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oyelabs/Colors.dart';
import 'package:oyelabs/Screens/OTPScreen.dart';
import 'package:oyelabs/Widgets/SocialButton.dart';

class LoginOldUser extends StatefulWidget {
  const LoginOldUser({Key? key}) : super(key: key);

  @override
  _LoginOldUserState createState() => _LoginOldUserState();
}

class _LoginOldUserState extends State<LoginOldUser> {
  int _value = 1;
  @override
  Widget Welcome() {
    return Text(
      "Welcome Back !",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget facebook() {
    return CustomWidgets.socialButtonRect(
        'CONTINUE WITH FACEBOOK', facebookColor, Icons.facebook, onTap: () {
      //Fluttertoast.showToast(msg: 'I am facebook');
    });
  }

  Widget fb() {
    return Center(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .9,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff39579A),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
          child: Center(
            child: Wrap(
              children: <Widget>[
                Container(
                  child: SvgPicture.asset(
                    "assets/Images/fblogo.svg",
                    fit: BoxFit.fill,
                    height: 30.0,
                    width: 40.0,
                    // fit: BoxFit.cover
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("CONTINUE WITH FACEBOOK",
                      style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget phoneText() {
    return Text(
      "OR CONTINUE WITH PHONE NUMBER ",
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
    );
  }

  Widget phone() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width * .8,
        height: 70,
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width * .8,
            margin: EdgeInsets.only(top: 8, bottom: 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 8,
                  bottom: 0,
                ),
                child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("+1 USA"),
                        value: 1,
                      ),
                    ],

                    // onChanged: (int value) {
                    //   setState(() {
                    //     _value = value;
                    //   });
                    // },
                    hint: Text("Select item")),
              ),
              Container(height: 40, child: VerticalDivider(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.width * .1,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Mobile Number',
                    ),
                  ),
                ),
              )
            ]),
          ),
        ]));
  }

  Widget google() {
    return Center(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .9,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
          child: Center(
            child: Wrap(
              children: <Widget>[
                Container(
                  child: SvgPicture.asset(
                    "assets/Images/glogo.svg",
                    fit: BoxFit.fill,
                    height: 30.0,
                    width: 40.0,
                    // fit: BoxFit.cover
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "CONTINUE WITH GOOGLE",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget logIn() {
    return Container(
      width: MediaQuery.of(context).size.width * .85,
      height: 60,
      child: ElevatedButton(
        child: Text('LOG IN'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => OTPScreen()));
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
      ),
    );
  }

  Widget forgetPassword() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Text(
          "Forgot Password ?",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
Widget signup(){
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("DONT HAVE AN ACCOUNT ? ",style:
            TextStyle(color: Colors.grey),),
            GestureDetector(
              child: Text("SIGN UP",style:
              TextStyle(color: Colors.blueAccent),),
            ),
          ],
        ),

      ),
    );
}
 Widget backArrow(){

    return Container(
        width: 50,
        child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)));
 }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            backArrow(),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  Welcome(),
                  SizedBox(
                    height: 100,
                  ),
                  fb(),
                  SizedBox(
                    height: 25,
                  ),
                  google(),
                  SizedBox(
                    height: 100,
                  ),
                  phoneText(),
                  SizedBox(
                    height: 25,
                  ),
                  phone(),
                  SizedBox(
                    height: 25,
                  ),
                  logIn(),
                  SizedBox(
                    height: 10,
                  ),
                  forgetPassword(),
                  SizedBox(
                    height: 10,
                  ),
                  signup(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
