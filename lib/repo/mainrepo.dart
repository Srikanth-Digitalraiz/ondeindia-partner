import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:ondeindiapartner/constants/apiconstants.dart';
import 'package:http/http.dart' as http;

Future<List> getDriversList() async {
  String apiUrl = driverList;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['driversList'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getVehicleList() async {
  String apiUrl = vehicleList;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['vehicleList'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getNotifications() async {
  String apiUrl = notifications;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['notification'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getmappingList() async {
  String apiUrl = mappingList;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['mappinglist'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getCustomerRatings() async {
  String apiUrl = customerRating;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['comments'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getEarningList() async {
  String apiUrl = mappingList;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['mappinglist']['earningdetails'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getDrivers() async {
  String apiUrl = driverSelection;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['driver'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}

Future<List> getVehicles() async {
  String apiUrl = vehicleSelection;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['vehicle'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}
