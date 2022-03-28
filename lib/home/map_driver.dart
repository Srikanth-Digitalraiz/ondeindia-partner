import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';

class MapDriver extends StatefulWidget {
  MapDriver({Key? key}) : super(key: key);

  @override
  State<MapDriver> createState() => _MapDriverState();
}

class _MapDriverState extends State<MapDriver> {
  bool _driverSelect = false;
  String selectedDriver = "Select Driver";

  bool _vehicleSelect = false;
  String selectedVehicle = "Select Vehicle";

  String _fromDate = 'Select From Date';
  String _toDate = 'Select To Date';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Select Driver",
              style: TextStyle(
                color: kindaBlack,
                fontFamily: 'MonB',
              ),
            ),
            SizedBox(
              height: 10,
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
              child: InkWell(
                onTap: () {
                  setState(() {
                    _driverSelect = !_driverSelect;
                  });
                },
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
                            selectedDriver,
                            style: TextStyle(
                              color: kindaBlack,
                              fontFamily: 'MonR',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      _driverSelect == true
                          ? LineIcons.chevronCircleDown
                          : LineIcons.chevronCircleRight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _driverSelect == true ? true : false,
              child: SizedBox(
                height: 6,
              ),
            ),
            Visibility(
              visible: _driverSelect == true ? true : false,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: _getDriverslist(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select Vehicle",
              style: TextStyle(
                color: kindaBlack,
                fontFamily: 'MonB',
              ),
            ),
            SizedBox(
              height: 10,
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
              child: InkWell(
                onTap: () {
                  setState(() {
                    _vehicleSelect = !_vehicleSelect;
                  });
                },
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
                            selectedVehicle,
                            style: TextStyle(
                              color: kindaBlack,
                              fontFamily: 'MonR',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      LineIcons.chevronCircleRight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Visibility(
              visible: _vehicleSelect == true ? true : false,
              child: SizedBox(
                height: 6,
              ),
            ),
            Visibility(
              visible: _vehicleSelect == true ? true : false,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: _getVehicleList(),
                ),
              ),
            ),
            Text(
              "Select Date Range",
              style: TextStyle(
                color: kindaBlack,
                fontFamily: 'MonB',
              ),
            ),
            SizedBox(
              height: 10,
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
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(LineIcons.calendar),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          _fromDate,
                          style: TextStyle(
                            color: kindaBlack,
                            fontFamily: 'MonR',
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      DatePicker.showDatePicker(
                        context,
                        showTitleActions: true,
                        minTime: DateTime(2020, 1, 1),
                        maxTime: DateTime(2080, 12, 31),
                        onConfirm: (date) {
                          var _fromFormate =
                              "${date.day} / ${date.month} / ${date.year}";
                          setState(() {
                            _fromDate = _fromFormate.toString();
                          });
                        },
                        currentTime: DateTime.now(),
                        locale: LocaleType.en,
                      );
                    },
                    icon: Icon(
                      LineIcons.chevronCircleRight,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
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
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(LineIcons.calendar),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          _toDate,
                          style: TextStyle(
                            color: kindaBlack,
                            fontFamily: 'MonR',
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      DatePicker.showDatePicker(
                        context,
                        showTitleActions: true,
                        minTime: DateTime(2020, 1, 1),
                        maxTime: DateTime(2080, 12, 31),
                        onConfirm: (date) {
                          var _toformate =
                              "${date.day} / ${date.month} / ${date.year}";
                          setState(() {
                            _toDate = _toformate.toString();
                          });
                        },
                        currentTime: DateTime.now(),
                        locale: LocaleType.en,
                      );
                    },
                    icon: Icon(
                      LineIcons.chevronCircleRight,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
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
                        "Map Driver to Vehicle",
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
            // Container(
            //   child: SfDateRangePicker(),
            // )
          ],
        ),
      ),
    );
  }

  Widget _getDriverslist() {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3.0,
          ),
        ],
      ),
      child: FutureBuilder(
        future: getDrivers(),
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
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedDriver = snapshot.data![index]['name'];
                    _driverSelect = !_driverSelect;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: snapshot.data![index]['status'] == "Not Assigned"
                      //     ? whiteColor
                      //     : Colors.grey.shade500,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, bottom: 12.0, left: 10.0),
                        child: Text(
                          snapshot.data![index]['name'],
                          style: TextStyle(
                            color: snapshot.data![index]['status'] == "Assigned"
                                ? Colors.green.shade700
                                : Colors.red.shade700,
                            fontSize: 14,
                            fontFamily: 'MonM',
                          ),
                        ),
                      ),
                    ),
                    Divider()
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getVehicleList() {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3.0,
          ),
        ],
      ),
      child: FutureBuilder(
        future: getVehicles(),
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
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedVehicle = snapshot.data![index]['name'];
                    _vehicleSelect = !_vehicleSelect;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: snapshot.data![index]['status'] == "Not Assigned"
                      //     ? whiteColor
                      //     : Colors.grey.shade500,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, bottom: 12.0, left: 10.0),
                        child: Text(
                          snapshot.data![index]['name'],
                          style: TextStyle(
                            color: snapshot.data![index]['status'] == "Assigned"
                                ? Colors.green.shade700
                                : Colors.red.shade700,
                            fontSize: 14,
                            fontFamily: 'MonM',
                          ),
                        ),
                      ),
                    ),
                    Divider()
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
