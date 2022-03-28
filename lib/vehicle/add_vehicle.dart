import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';

class AddVehicle extends StatefulWidget {
  AddVehicle({Key? key}) : super(key: key);

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  late List<bool> isSelected;
  List<bool> _selections = List.generate(3, (_) => false);

  @override
  void initState() {
    // this is for 3 buttons, add "false" same as the number of buttons here
    isSelected = [true, false, false];
    super.initState();
  }

  File? _firstImage;
  File? _secondImage;
  File? _thirdImage;

  @override
  Widget build(BuildContext context) {
    //First image
    Future pickFirstImage() async {
      try {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image == null) {
          return;
        }
        final imageTemporary = File(image.path);
        setState(() {
          this._firstImage = imageTemporary;
        });
      } on PlatformException catch (e) {
        print("Exception occured");
      }
    }

    //Second image
    Future pickSecondImage() async {
      try {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image == null) {
          return;
        }
        final imageTemporary = File(image.path);
        setState(() {
          this._secondImage = imageTemporary;
        });
      } on PlatformException catch (e) {
        print("Exception occured");
      }
    }

    //Third image
    Future pickThirdImage() async {
      try {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image == null) {
          return;
        }
        final imageTemporary = File(image.path);
        setState(() {
          this._thirdImage = imageTemporary;
        });
      } on PlatformException catch (e) {
        print("Exception occured");
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "Add Vehicle",
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
                "Please Fill out all the details to add a Vehicle",
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
                  hintText: 'ex: Swift',
                  label: Text("Vehicle Name"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.car,
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
                  hintText: 'ex: TS52YU8979',
                  label: Text("Plate No."),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.car,
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
                  hintText: 'ex: 2001',
                  label: Text("Vehicle Made Year"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.calendarAlt,
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
                  hintText: 'ex: 2002',
                  label: Text("Vehicel Registration year"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.calendarCheckAlt,
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
                  hintText: 'ex: Suzuki',
                  label: Text("Vehicle Company Name"),
                  labelStyle: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 13,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    LineIcons.building,
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: const Text(
                "Select Type of Vehicle",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 13,
                  fontFamily: 'MonS',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ToggleButtons(
                selectedColor: kindaBlack,
                fillColor: primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
                splashColor: kindaBlack,
                selectedBorderColor: transparentColor,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        ImageIcon(
                          AssetImage('assets/icons/mini.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mini",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 12,
                            fontFamily: 'MonM',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        ImageIcon(
                          AssetImage('assets/icons/macro.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Macro",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 12,
                            fontFamily: 'MonM',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        ImageIcon(
                          AssetImage('assets/icons/suv.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SUV",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 12,
                            fontFamily: 'MonM',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                },
                isSelected: isSelected,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: const Text(
                "Select Features of Vehicle",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 13,
                  fontFamily: 'MonS',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ToggleButtons(
                selectedColor: kindaBlack,
                fillColor: primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
                splashColor: kindaBlack,
                selectedBorderColor: transparentColor,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(LineIcons.snowflake),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "AC",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 12,
                            fontFamily: 'MonM',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(LineIcons.music),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 12,
                            fontFamily: 'MonM',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(LineIcons.television),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "TV",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 12,
                            fontFamily: 'MonM',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ],
                isSelected: _selections,
                onPressed: (int index) {
                  setState(() {
                    _selections[index] = !_selections[index];
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: const Text(
                "Add Vehicle Images",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 13,
                  fontFamily: 'MonS',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10,
                ),
                _firstImage == null
                    ? Expanded(
                        child: InkWell(
                          onTap: () {
                            pickThirdImage();
                          },
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 100,
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: whiteColor,
                              ),
                              child: Image.asset(
                                'assets/icons/addimage.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: InkWell(
                          onTap: () {
                            pickFirstImage();
                          },
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 100,
                              width: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: whiteColor,
                                  image: DecorationImage(
                                    image: FileImage(_firstImage!),
                                  )),
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  width: 10,
                ),
                _secondImage == null
                    ? Expanded(
                        child: InkWell(
                          onTap: () {
                            pickThirdImage();
                          },
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 100,
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: whiteColor,
                              ),
                              child: Image.asset(
                                'assets/icons/addimage.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: InkWell(
                          onTap: () {
                            pickSecondImage();
                          },
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 100,
                              width: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: whiteColor,
                                  image: DecorationImage(
                                    image: FileImage(_secondImage!),
                                  )),
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  width: 10,
                ),
                _thirdImage == null
                    ? Expanded(
                        child: InkWell(
                          onTap: () {
                            pickThirdImage();
                          },
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 100,
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: whiteColor,
                              ),
                              child: Image.asset(
                                'assets/icons/addimage.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: InkWell(
                          onTap: () {
                            pickThirdImage();
                          },
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 100,
                              width: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: whiteColor,
                                  image: DecorationImage(
                                    image: FileImage(_thirdImage!),
                                  )),
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  width: 10,
                ),
              ],
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
                        "Add Vehicle",
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
