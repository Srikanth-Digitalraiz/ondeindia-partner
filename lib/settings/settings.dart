import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/change_password/verification.dart';
import 'dart:math' as math;

import 'package:ondeindiapartner/constants/color_constants.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool status = false;
  bool _value = false;

  bool _dropDown = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: whiteColor,
        iconTheme: const IconThemeData(color: kindaBlack),
        title: Row(
          children: [
            const Expanded(
              child: const Text(
                "Settings",
                style: const TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonM',
                ),
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/6038379/pexels-photo-6038379.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Notifications",
                style: TextStyle(
                  fontFamily: 'MonS',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: InkWell(
                onDoubleTap: () {
                  setState(() {
                    status = !status;
                  });
                },
                child: Card(
                  color: status == true ? primaryColor : whiteColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Notifications",
                          style: TextStyle(
                            fontFamily: 'MonB',
                            fontSize: 13,
                            color: status == true ? whiteColor : primaryColor,
                          ),
                        ),
                        Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: status == true ? 3 : 0,
                          child: FlutterSwitch(
                            activeColor: primaryColor,
                            width: 40.0,
                            height: 20.0,
                            valueFontSize: 12.0,
                            toggleSize: 16.0,
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              color: kindaBlack.withOpacity(0.5),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // InkWell(
            //   onTap: () {
            //     setState(() {
            //       _dropDown = !_dropDown;
            //     });
            //   },
            //   child: Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           child: Text(
            //             "Rider Preference",
            //             style: TextStyle(
            //               fontFamily: 'MonS',
            //               fontSize: 15,
            //               color: Colors.black,
            //             ),
            //           ),
            //         ),
            //         Transform.rotate(
            //           angle: _dropDown == true ? 0 : 270 * math.pi / 180,
            //           child: IconButton(
            //             onPressed: () {
            //               setState(() {
            //                 _dropDown = !_dropDown;
            //               });
            //             },
            //             icon: Icon(Icons.arrow_circle_down),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            // Visibility(
            //   visible: _dropDown == true ? true : false,
            //   child: FutureBuilder(
            //     builder: (context, AsyncSnapshot<List> snapshot) {
            //       if (!snapshot.hasData) {
            //         return Center(
            //           child: SizedBox(
            //             height: 60,
            //             width: 60,
            //             child: Lottie.asset('assets/animation/loading.json'),
            //           ),
            //         );
            //       }
            //       return ListView.builder(
            //         physics: NeverScrollableScrollPhysics(),
            //         shrinkWrap: true,
            //         itemBuilder: (context, index) {
            //           return Column(
            //             children: [
            //               Divider(
            //                 color: kindaBlack.withOpacity(0.6),
            //               ),
            //               SwitchListTile(
            //                 title: Text(
            //                   snapshot.data![index]['title'],
            //                   style: TextStyle(
            //                     fontFamily: 'MonS',
            //                     fontSize: 15,
            //                     color: Colors.black,
            //                   ),
            //                 ),
            //                 subtitle: Padding(
            //                   padding: const EdgeInsets.only(top: 4.0),
            //                   child: Text(
            //                     snapshot.data![index]['description'],
            //                     style: TextStyle(
            //                       fontFamily: 'MonR',
            //                       fontSize: 12,
            //                       color: Colors.black,
            //                     ),
            //                   ),
            //                 ),
            //                 secondary: snapshot.data![index]['title']
            //                             .toString() ==
            //                         "Smoking"
            //                     ? Image.asset('assets/icons/smoking.png')
            //                     : snapshot.data![index]['title'].toString() ==
            //                             "Drinking"
            //                         ? Image.asset('assets/icons/drinking.png')
            //                         : snapshot.data![index]['title']
            //                                     .toString() ==
            //                                 "Carying Pets"
            //                             ? Image.asset('assets/icons/pets.png')
            //                             : snapshot.data![index]['title']
            //                                         .toString() ==
            //                                     "Children"
            //                                 ? Image.asset(
            //                                     'assets/icons/children.png')
            //                                 : snapshot.data![index]['title']
            //                                             .toString() ==
            //                                         "Extra Laugage"
            //                                     ? Image.asset(
            //                                         'assets/icons/extraluggage.png')
            //                                     : snapshot.data![index]['title']
            //                                                 .toString() ==
            //                                             "Multiple Languages"
            //                                         ? Image.asset(
            //                                             'assets/icons/multiplelang.png')
            //                                         : Icon(Icons.code),
            //                 selected: _value,
            //                 value: _value,
            //                 onChanged: (value) {
            //                   setState(() {
            //                     _value = value;
            //                   });
            //                 },
            //               ),
            //             ],
            //           );
            //         },
            //         itemCount: snapshot.data!.length,
            //       );
            //     },
            //     future: getPreferenceList(),
            //   ),
            // ),
            // Divider(
            //   color: kindaBlack.withOpacity(0.6),
            // ),
            //Change Password
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Accessibility Section",
                style: TextStyle(
                  fontFamily: 'MonS',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.red.shade500,
              leading: const ImageIcon(
                const AssetImage(
                  'assets/icons/password.png',
                ),
                size: 20,
                color: Colors.white,
              ),
              title: const Text(
                "Change Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'MonR',
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerificationPage(
                              title: "Change Password",
                            )));
              },
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              color: kindaBlack.withOpacity(0.5),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Legal Section",
                style: TextStyle(
                  fontFamily: 'MonS',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage(
                  'assets/icons/terms.png',
                ),
                size: 20,
                color: Colors.black,
              ),
              title: const Text(
                "Terms and Conditions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'MonR',
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const ImageIcon(
                const AssetImage(
                  'assets/icons/privacy.png',
                ),
                size: 20,
                color: Colors.black,
              ),
              title: const Text(
                "Privacy Policy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'MonR',
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const ImageIcon(
                const AssetImage(
                  'assets/icons/customercare.png',
                ),
                size: 20,
                color: Colors.black,
              ),
              title: const Text(
                "Customer Care",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'MonR',
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
