import 'package:flutter/material.dart';
import 'package:ondeindiapartner/auth/login.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/home/home.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

enum RegisterAs { Personal, Business }

class _RegisterScreenState extends State<RegisterScreen> {
  bool _value = false;
  int val = 1;
  RegisterAs _site = RegisterAs.Personal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
            ),
            SafeArea(
              child: Center(
                child: Image.asset(
                  'assets/images/partner.png',
                  width: 230,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text("Personal"),
                    leading: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (int? value) {
                          setState(() {
                            val = value!;
                          });
                        },
                        activeColor: primaryColor),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text("Business"),
                    leading: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (int? value) {
                          setState(() {
                            val = value!;
                          });
                        },
                        activeColor: primaryColor),
                  ),
                ),
              ],
            ),
            val == 1 ? _personalRegistration() : _businessRegistration(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/loinillus.png',
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _personalRegistration() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 10.0, bottom: 10.0),
          child: Text(
            "Personal Register",
            style: TextStyle(
              color: kindaBlack,
              fontSize: 17,
              fontFamily: 'MonS',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: Name',
              label: Text("Partner Name"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.person,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: Manager Name',
              label: Text("Manager Name"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.person,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: 9878987654',
              label: Text("Mobile"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.call,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'your@mail.com',
              label: Text("Email"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.email,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '********',
              label: Text("Password"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.password,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '********',
              label: Text("Confirm Password"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.password,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
            ),
          ),
        ),
        SizedBox(height: 6),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primaryColor),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Center(
                  child: Text(
                    "Register Personal Account",
                    style: TextStyle(
                      color: kindaBlack,
                      fontSize: 15,
                      fontFamily: 'MonS',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("OR"),
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have Account ?",
                style: const TextStyle(
                  fontFamily: 'MonR',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  "Login",
                  style: const TextStyle(
                    fontFamily: 'MonR',
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _businessRegistration() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 10.0, bottom: 10.0),
          child: Text(
            "Business Registration",
            style: TextStyle(
              color: kindaBlack,
              fontSize: 17,
              fontFamily: 'MonS',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: Name',
              label: Text("Company Name"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: ImageIcon(
                AssetImage(
                  'assets/icons/compan.png',
                ),
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: GST Number',
              label: Text("Company GST Number"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: ImageIcon(
                AssetImage(
                  'assets/icons/gst.png',
                ),
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: 2001',
              label: Text("Company estd. Year"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: ImageIcon(
                AssetImage(
                  'assets/icons/estd.png',
                ),
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: Company Incorporation',
              label: Text("Company Incorporation"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: ImageIcon(
                AssetImage(
                  'assets/icons/compan.png',
                ),
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: Name',
              label: Text("Partner Name"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.person,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'ex: 9878987654',
              label: Text("Mobile"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.call,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'your@mail.com',
              label: Text("Email"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.email,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: new BorderSide(color: primaryColor),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '********',
              label: Text("Password"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.password,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '********',
              label: Text("Confirm Password"),
              labelStyle: TextStyle(
                fontFamily: 'MonS',
                fontSize: 13,
                color: primaryColor,
              ),
              suffixIcon: Icon(
                Icons.password,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: new BorderSide(color: primaryColor)),
            ),
          ),
        ),
        SizedBox(height: 6),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primaryColor),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Center(
                  child: Text(
                    "Register Business Account",
                    style: TextStyle(
                      color: kindaBlack,
                      fontSize: 15,
                      fontFamily: 'MonS',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("OR"),
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have Account ?",
                style: const TextStyle(
                  fontFamily: 'MonR',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  "Login",
                  style: const TextStyle(
                    fontFamily: 'MonR',
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
