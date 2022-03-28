import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({Key? key}) : super(key: key);

  @override
  State<AddDriver> createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "Add Driver",
          style: TextStyle(
            color: kindaBlack,
            fontSize: 15,
            fontFamily: 'MonM',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Please Fill out all the details to add a driver",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonM',
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: Shayam',
                  label: Text("Name"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.user,
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
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: Shayam',
                  label: Text("User Name"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.user,
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
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: your@mailID',
                  label: Text("Email"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.envelope,
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
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: 8976545432',
                  label: Text("Phone Number"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.phone,
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
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: ********',
                  label: Text("Password"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  prefixIcon: Icon(
                    LineIcons.key,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.eye,
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
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'ex: ********',
                  label: Text("Confirm Password"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  prefixIcon: Icon(
                    LineIcons.key,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.eye,
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
              height: 25,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(primaryColor),
                    ),
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => LoginPage(),
                      //   ),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Add Driver",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
