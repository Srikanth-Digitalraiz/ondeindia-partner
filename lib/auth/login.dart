import 'package:flutter/material.dart';
import 'package:ondeindiapartner/auth/register.dart';
import 'package:ondeindiapartner/change_password/verification.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/home/home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/partner.png',
                height: 210,
                width: 230,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Login",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 17,
                  fontFamily: 'MonS',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: 98076543535',
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
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationPage(
                        title: "Forgot Password",
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.password,
                  color: Colors.black,
                ),
                label: Text(
                  "Forgot Password",
                  style: const TextStyle(
                    fontFamily: 'MonR',
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
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
                        "Login",
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
                    "Don't have an account ?",
                    style: const TextStyle(
                      fontFamily: 'MonR',
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      "Register",
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
}
