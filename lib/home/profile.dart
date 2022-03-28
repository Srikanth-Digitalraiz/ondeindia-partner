import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kindaBlack,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/6038379/pexels-photo-6038379.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kindaBlack, // Background Color
                    ),
                    onPressed: () {},
                    child: Text(
                      "Change Logo / Profile",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontFamily: 'MonM',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Profile Details",
                  style: TextStyle(
                    color: kindaBlack,
                    fontFamily: 'MonB',
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(LineIcons.user),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Company / Person Name",
                        style: TextStyle(
                          color: kindaBlack,
                          fontFamily: 'MonR',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(LineIcons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Mobile Number",
                        style: TextStyle(
                          color: kindaBlack,
                          fontFamily: 'MonR',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(LineIcons.envelopeOpen),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Email ID",
                        style: TextStyle(
                          color: kindaBlack,
                          fontFamily: 'MonR',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(LineIcons.locationArrow),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "location",
                        style: TextStyle(
                          color: kindaBlack,
                          fontFamily: 'MonR',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(LineIcons.carSide),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Vehicle Count",
                                    style: TextStyle(
                                      color: kindaBlack,
                                      fontFamily: 'MonR',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "12",
                              style: TextStyle(
                                color: kindaBlack,
                                fontFamily: 'MonR',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: kindaBlack,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(LineIcons.plusCircle),
                        label: Text(
                          "Add",
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'MonR',
                              fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(LineIcons.user),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Driver Count",
                                    style: TextStyle(
                                      color: kindaBlack,
                                      fontFamily: 'MonR',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                color: kindaBlack,
                                fontFamily: 'MonR',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: kindaBlack,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(LineIcons.plusCircle),
                        label: Text(
                          "Add",
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'MonR',
                              fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                _detailsCard()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kindaBlack,
        icon: Icon(LineIcons.editAlt, color: primaryColor),
        onPressed: () {},
        label: Text(
          "Edit Profile",
          style: TextStyle(
            color: primaryColor,
            fontFamily: 'MonR',
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: whiteColor,
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://images.pexels.com/photos/6038379/pexels-photo-6038379.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rani",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'MonB',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mini",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'MonR',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "₹ 7000",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'MonB',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Earned",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'MonR',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: whiteColor,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/taxi.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "7",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'MonS',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Rides",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'MonS',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/salary.png',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "₹ 7000",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'MonS',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Earned",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'MonS',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/discount.png',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "12.70 %",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'MonS',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Commision",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'MonS',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
