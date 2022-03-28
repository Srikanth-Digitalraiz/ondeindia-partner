import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';
import 'package:url_launcher/url_launcher.dart';

class Analytics extends StatefulWidget {
  final String length;
  Analytics({Key? key, required this.length}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics>
    with SingleTickerProviderStateMixin {
  //Length
  String _runningLength = '';
  //Open Google maps
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "Analytics",
          style: TextStyle(
            color: kindaBlack,
            fontSize: 15,
            fontFamily: 'MonM',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.green,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Running ' + '(' + widget.length.toString() + ')',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'online  ' + '(' + widget.length.toString() + ')',
                  ),

                  // third tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Offline  ' + '(' + widget.length.toString() + ')',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  _getRunningList(),

                  // second tab bar view widget
                  _getOnlineDrivers(),
                  // Center(
                  //   child: Text(
                  //     'Buy Now',
                  //     style: TextStyle(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),

                  // Third tab bar view widget
                  _getOfflineDrivers(),
                  // Center(
                  //   child: Text(
                  //     'Cart',
                  //     style: TextStyle(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRunningList() {
    return FutureBuilder(
      future: getNotifications(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              height: 60,
              width: 60,
              child: Lottie.asset('assets/animations/loading.json'),
            ),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            // setState(() {
            //   _runningLength = snapshot.data!.length.toString();
            // });
            return Slidable(
              key: const ValueKey(0),
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    flex: 9,
                    onPressed: (context) {
                      String url =
                          "https://www.google.com/maps/dir/Manjeera+Majestic+Commercial,+JNTU+Road,+Kukatpally+Housing+Board+Colony,+Kukatpally,+Hyderabad,+Telangana/Deepa+Hospital,+14-2-163%D8%8C+Shah+Inayat+Road%D8%8C+Hari+Om+Colony,+Gyan+Bagh+Colony,+Begum+Bazar,+Ganj,+Hyderabad,+Telangana+500012%E2%80%AD/@17.4342419,78.354372,12z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x3bcb918d306665ad:0x26d40a8ce511aaed!2m2!1d78.393591!2d17.491839!1m5!1m1!1s0x3bcb9782bdd59b09:0x280d871dd2360e95!2m2!1d78.4676299!2d17.3764091!3e0";
                      _launchURL(url);
                    },
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                    icon: LineIcons.locationArrow,
                    label: 'Navigate',
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        snapshot.data![index]['driveImage'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data![index]['driver'],
                                      style: const TextStyle(
                                        fontFamily: 'MonS',
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      snapshot.data![index]['vehicleno'],
                                      style: const TextStyle(
                                        fontFamily: 'MonR',
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: const [
                                Text(
                                  "JNTU",
                                  style: const TextStyle(
                                    fontFamily: 'MonR',
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(LineIcons.arrowRight),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Begum Bazar",
                                  style: const TextStyle(
                                    fontFamily: 'MonR',
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
  /*
  Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      snapshot.data![index]['driveImage'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data![index]['driver'],
                                    style: const TextStyle(
                                      fontFamily: 'MonS',
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    snapshot.data![index]['vehicleno'],
                                    style: const TextStyle(
                                      fontFamily: 'MonR',
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "JNTU",
                                style: const TextStyle(
                                  fontFamily: 'MonR',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(LineIcons.arrowRight),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Begum Bazar",
                                style: const TextStyle(
                                  fontFamily: 'MonR',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
   */

  Widget _getOnlineDrivers() {
    return FutureBuilder(
      future: getNotifications(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              height: 60,
              width: 60,
              child: Lottie.asset('assets/animations/loading.json'),
            ),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      snapshot.data![index]['driveImage'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data![index]['driver'],
                                    style: const TextStyle(
                                      fontFamily: 'MonS',
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    snapshot.data![index]['vehicleno'],
                                    style: const TextStyle(
                                      fontFamily: 'MonR',
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            String url =
                                "https://www.google.com/maps/dir/Manjeera+Majestic+Commercial,+JNTU+Road,+Kukatpally+Housing+Board+Colony,+Kukatpally,+Hyderabad,+Telangana/Deepa+Hospital,+14-2-163%D8%8C+Shah+Inayat+Road%D8%8C+Hari+Om+Colony,+Gyan+Bagh+Colony,+Begum+Bazar,+Ganj,+Hyderabad,+Telangana+500012%E2%80%AD/@17.4342419,78.354372,12z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x3bcb918d306665ad:0x26d40a8ce511aaed!2m2!1d78.393591!2d17.491839!1m5!1m1!1s0x3bcb9782bdd59b09:0x280d871dd2360e95!2m2!1d78.4676299!2d17.3764091!3e0";
                            _launchURL(url);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 3.0,
                                )
                              ],
                            ),
                            child: Icon(
                              LineIcons.locationArrow,
                              color: Colors.blue.shade600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _getOfflineDrivers() {
    return FutureBuilder(
      future: getNotifications(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              height: 60,
              width: 60,
              child: Lottie.asset('assets/animations/loading.json'),
            ),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      snapshot.data![index]['driveImage'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data![index]['driver'],
                                    style: const TextStyle(
                                      fontFamily: 'MonS',
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    snapshot.data![index]['vehicleno'],
                                    style: const TextStyle(
                                      fontFamily: 'MonR',
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     String url =
                        //         "https://www.google.com/maps/dir/Manjeera+Majestic+Commercial,+JNTU+Road,+Kukatpally+Housing+Board+Colony,+Kukatpally,+Hyderabad,+Telangana/Deepa+Hospital,+14-2-163%D8%8C+Shah+Inayat+Road%D8%8C+Hari+Om+Colony,+Gyan+Bagh+Colony,+Begum+Bazar,+Ganj,+Hyderabad,+Telangana+500012%E2%80%AD/@17.4342419,78.354372,12z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x3bcb918d306665ad:0x26d40a8ce511aaed!2m2!1d78.393591!2d17.491839!1m5!1m1!1s0x3bcb9782bdd59b09:0x280d871dd2360e95!2m2!1d78.4676299!2d17.3764091!3e0";
                        //     _launchURL(url);
                        //   },
                        //   child: Container(
                        //     height: 30,
                        //     width: 30,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(60),
                        //       color: whiteColor,
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: Colors.grey.shade400,
                        //           blurRadius: 3.0,
                        //         )
                        //       ],
                        //     ),
                        //     child: Icon(
                        //       LineIcons.locationArrow,
                        //       color: Colors.blue.shade600,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
