import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/analytics/analytics.dart';
import 'package:ondeindiapartner/auth/login.dart';
import 'package:ondeindiapartner/constants/apiconstants.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/customer_rating/customer_ratings.dart';
import 'package:ondeindiapartner/driver/add_driver.dart';
import 'package:ondeindiapartner/driver/driverlist.dart';
import 'package:ondeindiapartner/history/history.dart';
import 'package:ondeindiapartner/mapped_list/mapped_list.dart';
import 'package:ondeindiapartner/notification/notification.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';
import 'package:ondeindiapartner/settings/settings.dart';
import 'package:ondeindiapartner/vehicle/add_vehicle.dart';
import 'package:ondeindiapartner/vehicle/vehiclelist.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  //Drive Preference
  bool _rental = true;
  bool _all = false;
  bool _city = true;
  bool _outstation = false;

  //Ride Preferences
  bool _allVehicles = false;
  bool _mini = true;
  bool _suv = true;
  bool _macro = false;
  bool _auto = true;
  bool _bike = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        color: whiteColor,
      ),
      child: Column(
        children: [
          Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 2,
            child: InkWell(
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => ProfilePage()));
              // },
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  color: whiteColor,
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
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
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rani",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'MonB',
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Lottie.asset(
                                      'assets/animations/verified.json',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Verified",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'MonR',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/newnavname.png',
                          width: 150,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: _menuItems(),
          ),
          // Material(
          //   elevation: 4,
          //   child: Padding(
          //     padding: const EdgeInsets.only(
          //         left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
          //     child: Image.asset('assets/images/newnavname.png'),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _menuItems() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/home.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/list.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Drivers List",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DriversList(),
              ),
            ),
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/mini.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Vehicles List",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VehicleList(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              LineIcons.user,
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Add Driver",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddDriver(),
                ),
              );
            },
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/mini.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Add Vehicle",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddVehicle(),
                ),
              );
            },
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/mapped.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Mapped Data",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MappedList(),
                ),
              );
            },
          ),
          FutureBuilder(
              future: getNotifications(),
              builder: (context, AsyncSnapshot<List> snapshot) {
                return ListTile(
                  leading: ImageIcon(
                    AssetImage(
                      'assets/icons/analytics.png',
                    ),
                    size: 20,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Analytics",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MonM',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Analytics(length: snapshot.data!.length.toString()),
                      ),
                    );
                  },
                );
              }),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/notification.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Notification",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/rating.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Customer Rating",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CustomerRatings(),
                ),
              );
            },
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/history.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "History",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoryScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/settings.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          // //Drive Preference
          // _drivePreference(),
          // //Ride Preference
          // _ridePreference(),
          Divider(),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/customercare.png',
              ),
              size: 20,
              color: Colors.black,
            ),
            title: Text(
              "Help",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'MonM',
              ),
            ),
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                'assets/icons/logout.png',
              ),
              size: 20,
              color: Colors.red.shade600,
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                color: Colors.red.shade600,
                fontFamily: 'MonM',
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }

  //DrivePreference
  Widget _drivePreference() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: kindaBlack.withOpacity(0.7),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Drive Preference",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'All',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _all,
          onChanged: (bool value) {
            setState(() {
              _all = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/all.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'City',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _city,
          onChanged: (bool value) {
            setState(() {
              _city = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/city.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'Rental',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _rental,
          onChanged: (bool value) {
            setState(() {
              _rental = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/rental.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'Outstation',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _outstation,
          onChanged: (bool value) {
            setState(() {
              _outstation = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/outstation.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  //RidePreference
  Widget _ridePreference() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: kindaBlack.withOpacity(0.7),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Ride Preference",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'All',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _allVehicles,
          onChanged: (bool value) {
            setState(() {
              _allVehicles = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/all.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'Auto Rickshaw',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _auto,
          onChanged: (bool value) {
            setState(() {
              _auto = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/auto.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'Mini',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _mini,
          onChanged: (bool value) {
            setState(() {
              _mini = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/mini.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'Macro',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _macro,
          onChanged: (bool value) {
            setState(() {
              _macro = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/macro.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'Bike',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _bike,
          onChanged: (bool value) {
            setState(() {
              _bike = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/bike.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        SwitchListTile(
          activeTrackColor: primaryColor.withOpacity(0.6),
          activeColor: primaryColor,
          title: const Text(
            'SUV',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'MonM',
            ),
          ),
          value: _suv,
          onChanged: (bool value) {
            setState(() {
              _suv = value;
            });
          },
          secondary: ImageIcon(
            AssetImage(
              'assets/icons/suv.png',
            ),
            size: 20,
            color: Colors.black,
          ),
        ),
        Divider(
          color: kindaBlack.withOpacity(0.7),
        ),
      ],
    );
  }
}
