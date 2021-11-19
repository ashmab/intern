import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:oyelabs/Screens/LoginOldUser.dart';
import 'package:oyelabs/Widgets/PhoneNumber.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _selectedCountryCode;
  List<String> _countryCodes = ['+91', '+23'];
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 0, right: 0, left: 0),
                        child: Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,
                          child: SvgPicture.asset(
                            "assets/Images/login_frame.svg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            // fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.1,
                                top: MediaQuery.of(context).size.height * .56,
                                right: MediaQuery.of(context).size.width * .1),
                            child: Text(
                              "Your Home services Expert",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            )),
                      )
                    ])),
                Center(
                  child: Text("Continue with Phone Number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: MediaQuery.of(context).size.width * .8,
                    height: 70,
                    child: Stack(children: [
                      Container(
                      width: MediaQuery.of(context).size.width*.8,
                           margin: EdgeInsets.only(
                          top: 8,
                         bottom: 0),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Padding(
                                  padding: EdgeInsets.only(
                                       left: 5,
                                      top: 8,
                                       bottom: 0,),
                        child:DropdownButton(
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text("+1 USA"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 2,
                              )
                            ],

                            // onChanged: (int value) {
                            //   setState(() {
                            //     _value = value;
                            //   });
                            // },
                            hint:Text("Select item")
                        ),



                                                   ),
                               Container(height: 40, child: VerticalDivider(color: Colors.grey)),
                               Padding(
                                 padding: const EdgeInsets.only(left: 10),
                                 child: Container(
                                   width: MediaQuery.of(context).size.width*.4,
                                   height:MediaQuery.of(context).size.width*.1,
                                   child:TextField(
                                     obscureText: true,
                                     decoration: InputDecoration(
                                       border: InputBorder.none,


                                       hintText: 'Enter Mobile Number',
                                     ),
                                   ),
                                 ),
                               )
                             ]
                         ),
                      ),

                    ])),
                SizedBox(
                  height: 15,
                ),
                Container(

                  width: MediaQuery.of(context).size.width * .85,
                  height: 60,
                  child: ElevatedButton(
                    child: Text('SIGN UP'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginOldUser()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text("VIEW OTHER OPTION",style:
                      TextStyle(color: Colors.blueAccent),),
                  ),
                ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    
    child: Center(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ALREADY HAVE AN ACCOUNT ? ",style:
          TextStyle(color: Colors.grey),),
          GestureDetector(
            child: Text("LOG IN",style:
            TextStyle(color: Colors.blueAccent),),
          ),
        ],
      ),
   
    ),
    ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
