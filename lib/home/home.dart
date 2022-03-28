import 'package:badges/badges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:location/location.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/home/map_driver.dart';
import 'package:ondeindiapartner/home/profile.dart';
import 'package:ondeindiapartner/mapped_list/mapping_details.dart';
import 'package:ondeindiapartner/notification/notification.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';
import 'package:ondeindiapartner/widgets/drawer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18, vertical: 12);
  double gap = 10;

  PageController controller = PageController();

  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600]!,
    primaryColor
  ];

  //Map Part
  LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 14.9),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: const IconThemeData(color: kindaBlack),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu));
        }),
        title: Image.asset(
          'assets/images/newnavname.png',
          width: 160,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            icon: Container(
              height: 50,
              width: 60,
              child: Icon(Icons.notifications_active_outlined),
            ),
          )
        ],
      ),
      body: PageView.builder(
        onPageChanged: (page) {
          setState(() {
            selectedIndex = page;
            badge = badge + 1;
          });
        },
        controller: controller,
        itemBuilder: (context, position) {
          return selectedIndex == 0
              ? _homePart()
              : selectedIndex == 1
                  ? MapDriver()
                  : selectedIndex == 2
                      ? Profile()
                      : Container(color: Colors.pink);
        },
        itemCount: 3,
      ),
      bottomNavigationBar: GNav(
        tabMargin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
        backgroundColor: transparentColor,
        tabs: [
          GButton(
            gap: gap,
            iconActiveColor: Colors.purple,
            iconColor: Colors.black,
            textColor: Colors.purple,
            backgroundColor: Colors.purple.withOpacity(.2),
            iconSize: 24,
            padding: padding,
            icon: LineIcons.home,
            text: 'Home',
            textStyle: TextStyle(
              fontFamily: 'MonR',
            ),
          ),
          //
          GButton(
            gap: gap,
            iconActiveColor: Colors.amber[600],
            iconColor: Colors.black,
            textColor: Colors.amber[600],
            backgroundColor: Colors.amber[600]!.withOpacity(.2),
            iconSize: 24,
            padding: padding,
            icon: LineIcons.atom,
            text: 'Mapping',
            textStyle: TextStyle(
              fontFamily: 'MonR',
            ),
          ),
          GButton(
            gap: gap,
            iconActiveColor: Colors.teal,
            iconColor: Colors.black,
            textColor: Colors.teal,
            backgroundColor: Colors.teal.withOpacity(.2),
            iconSize: 24,
            padding: padding,
            icon: LineIcons.user,
            leading: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/6038379/pexels-photo-6038379.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
              ),
            ),
            text: 'Profile',
            textStyle: TextStyle(
              fontFamily: 'MonR',
            ),
          )
        ],
        selectedIndex: selectedIndex,
        onTabChange: (index) {
          setState(() {
            selectedIndex = index;
          });
          controller.jumpToPage(index);
        },
      ),
      drawer: DrawerWidget(),
    );
  }

  Widget _homePart() {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(target: _initialcameraposition),
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          onMapCreated: _onMapCreated,
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          myLocationEnabled: true,
          // ignore: prefer_collection_literals
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
            // ignore: unnecessary_new
            new Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          ].toSet(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 6.0),
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(
                    8,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Live Locations",
                  style: TextStyle(
                    color: primaryColor,
                    fontFamily: 'MonB',
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
