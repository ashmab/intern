import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oyelabs/Screens/Home.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  Widget niceText() {
    return Text(
      "Hey,nice to meet you ! ",
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
    );
  }
  Widget seeText() {
    return Text(
      "See services around  ",
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
  Widget addressFrame(){
    return Padding(
      padding: EdgeInsets.only(bottom: 0, right: 0, left: 0),
      child: Container(

        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        child: SvgPicture.asset(
          "assets/Images/address.svg",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          // fit: BoxFit.cover
        ),
      ),
    );
  }
  Widget currentLocation() {
    return Center(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .9,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Home()));
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
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
                  child: Icon(Icons.my_location)
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text("Your Current Location",
                      style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget searchLocation() {
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
                    child: Icon(Icons.search,color: Colors.grey,)
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Some Other Location",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body:Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            niceText(),
            SizedBox(
              height: 25,
            ),
            seeText(),
            SizedBox(
              height: 50,
            ),
            addressFrame(),
            SizedBox(
              height: 50,
            ),
            currentLocation(),
            SizedBox(
              height: 25,
            ),
            searchLocation(),
          ],
        ),
      ),
    ));
  }
}
