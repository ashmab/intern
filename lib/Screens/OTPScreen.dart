import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyelabs/Screens/AddressScreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget backArrow(){

    return Container(
        width: 50,
        child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)));
  }

  Widget imageframe(){
    return Padding(
      padding: EdgeInsets.only(bottom: 0, right: 0, left: 0),
      child: Container(

        color: Colors.transparent,
        width: MediaQuery.of(context).size.width*.6,
        child: Image.asset(
          "assets/Images/otp.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          // fit: BoxFit.cover
        ),
      ),
    );
  }
  Widget otpVerify() {
    return Text(
      "OTP Verification ",
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
  Widget otpSend(){
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter the otp send to  ",style:
            TextStyle(color: Colors.black),),
            GestureDetector(
              child: Text("+91 7907169090",style:
              TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
          ],
        ),

      ),
    );
  }
  Widget otpNotRecieved(){
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("OTP not recieved ? ",style:
            TextStyle(color: Colors.grey),),
            GestureDetector(
              child: Text("RESEND OTP",style:
              TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            ),
          ],
        ),

      ),
    );
  }
  Widget proceed() {
    return Container(
      width: MediaQuery.of(context).size.width * .85,
      height: 60,
      child: ElevatedButton(
        child: Text('VERIFY & PROCEED'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => AddressScreen()));
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
  Widget otpBlock(){
    return  Padding(
        padding: EdgeInsets.only(
            left: 20,right: 20),
        child: Container(
            width: MediaQuery.of(context).size.width*.7,
            child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                obscuringCharacter: '*',
                keyboardType:
                TextInputType.number,
                autoDismissKeyboard: true,
                enableActiveFill: true,
                onChanged: (value) {},
                textStyle: TextStyle(
                    fontSize: 30.0,

                    fontWeight: FontWeight.w600,
                    color:Colors.black),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
            )));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            backArrow(),
            SizedBox(
              height: 50,
            ),
            Center(child: imageframe()),
            SizedBox(
              height: 50,
            ),
            Center(child: otpVerify()),
            SizedBox(
              height: 25,
            ),
            Center(child: otpSend()),
            SizedBox(
              height: 25,
            ),
            Center(child: otpBlock()),
            SizedBox(
              height: 25,
            ),
            Center(child: otpNotRecieved()),
            SizedBox(
              height: 25,
            ),
            Center(child: proceed()),
          ],


        ),

      ),
    );
  }
}

class ColorConstant {
}
