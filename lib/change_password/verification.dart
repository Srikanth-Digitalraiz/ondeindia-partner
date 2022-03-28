import 'package:flutter/material.dart';
import 'package:ondeindiapartner/auth/login.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
// import 'package:ondeindiadriver/auth/login.dart';
// import 'package:ondeindiadriver/constants/color_constants.dart';

class VerificationPage extends StatefulWidget {
  final String title;
  VerificationPage({Key? key, required this.title}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: kindaBlack,
                      fontSize: 15,
                      fontFamily: 'MonM',
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Stack(
                      children: [
                        Material(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70),
                          ),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Colors.yellow.shade500.withOpacity(0.4),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/icons/changepassword.png',
                            height: 70,
                            width: 70,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Please Enter your registered Email Address, So we can verify the user \n\n Thank you",
                      style: TextStyle(
                        color: kindaBlack,
                        fontSize: 15,
                        fontFamily: 'MonR',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'ex: your@gmail.com',
                        label: const Text("Email Address"),
                        labelStyle: const TextStyle(
                          fontFamily: 'MonS',
                          fontSize: 13,
                          color: primaryColor,
                        ),
                        suffixIcon: const Icon(
                          Icons.call_outlined,
                          color: primaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: primaryColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: primaryColor)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: _bottomSheet(),
                                );
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Send OTP",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 15,
                              fontFamily: 'MonM',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Container(
            height: 10,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: primaryColor,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              children: [
                Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Colors.yellow.shade500.withOpacity(0.4),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/icons/changepassword.png',
                    height: 70,
                    width: 70,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Please Enter the OTP sent on you mobile number \n\n Thank you",
              style: TextStyle(
                color: kindaBlack,
                fontSize: 15,
                fontFamily: 'MonR',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'ex: 8589',
                label: const Text("OTP"),
                labelStyle: const TextStyle(
                  fontFamily: 'MonS',
                  fontSize: 13,
                  color: primaryColor,
                ),
                suffixIcon: const Icon(
                  Icons.password_outlined,
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: primaryColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: primaryColor)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: _changePassword(),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      color: kindaBlack,
                      fontSize: 15,
                      fontFamily: 'MonM',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _changePassword() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: primaryColor,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                children: [
                  Material(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.yellow.shade500.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons/changepassword.png',
                      height: 70,
                      width: 70,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Please Enter New Password and hit Change Password to change Password \n\n Thank you.",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonR',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Note:- You will have to Re-Login into Application to confirm changes",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonR',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '********',
                  label: const Text("New Password"),
                  labelStyle: const TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.password_outlined,
                    color: primaryColor,
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: primaryColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: primaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '*******',
                  label: const Text("Confirm New Password"),
                  labelStyle: const TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.password_outlined,
                    color: primaryColor,
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: primaryColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: primaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: primaryColor)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Change Password",
                      style: TextStyle(
                        color: kindaBlack,
                        fontSize: 15,
                        fontFamily: 'MonM',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
