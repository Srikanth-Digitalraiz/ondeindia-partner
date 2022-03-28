import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';

class MappingDetails extends StatefulWidget {
  final String driverImage,
      vehicleImage,
      driverName,
      vehicleName,
      driverMobile,
      vehicleNumber,
      totalTrips,
      totalEarning;
  const MappingDetails(
      {Key? key,
      required this.driverImage,
      required this.driverMobile,
      required this.driverName,
      required this.vehicleImage,
      required this.vehicleName,
      required this.vehicleNumber,
      required this.totalTrips,
      required this.totalEarning})
      : super(key: key);

  @override
  State<MappingDetails> createState() => _MappingDetailsState();
}

class _MappingDetailsState extends State<MappingDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        color: whiteColor,
      ),
      height: MediaQuery.of(context).size.height / 1.3,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "Mapped Detail",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonS',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kindaBlack,
                          image: DecorationImage(
                            image: NetworkImage(widget.driverImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(LineIcons.arrowRight),
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kindaBlack,
                          image: DecorationImage(
                            image: NetworkImage(widget.vehicleImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Icon(LineIcons.user),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Driver Name :",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 14,
                            fontFamily: 'MonB',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      Text(
                        widget.driverName,
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(LineIcons.mobilePhone),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Driver Mobile :",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 14,
                              fontFamily: 'MonB',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text(
                        widget.driverMobile,
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Icon(LineIcons.car),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Vehicle name :",
                          style: TextStyle(
                            color: kindaBlack,
                            fontSize: 14,
                            fontFamily: 'MonB',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      Text(
                        widget.vehicleName,
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(LineIcons.car),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Vehicle Number :",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 14,
                              fontFamily: 'MonB',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text(
                        widget.vehicleNumber,
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(LineIcons.car),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Vehicle type :",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 14,
                              fontFamily: 'MonB',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text(
                        "Car",
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(LineIcons.car),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Total Trips :",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 14,
                              fontFamily: 'MonB',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text(
                        widget.totalTrips,
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(LineIcons.moneyCheck),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Total Earning :",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 14,
                              fontFamily: 'MonB',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text(
                        widget.totalEarning,
                        style: TextStyle(
                          color: kindaBlack,
                          fontSize: 14,
                          fontFamily: 'MonM',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: primaryColor,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Contact Driver",
                            style: TextStyle(
                              color: kindaBlack,
                              fontSize: 14,
                              fontFamily: 'MonM',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
