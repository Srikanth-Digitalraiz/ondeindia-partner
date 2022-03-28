import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';
import 'package:url_launcher/url_launcher.dart';

class VehicleList extends StatefulWidget {
  VehicleList({Key? key}) : super(key: key);

  @override
  State<VehicleList> createState() => _VehicleListState();
}

class _VehicleListState extends State<VehicleList> {
  //Open Google maps
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "Vehicle's List",
          style: TextStyle(
            color: kindaBlack,
            fontSize: 15,
            fontFamily: 'MonM',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _getDriversList(),
          ),
        ],
      ),
    );
  }

  Widget _getDriversList() {
    return FutureBuilder(
      future: getVehicleList(),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: kindaBlack,
                          image: DecorationImage(
                            image: NetworkImage(
                              snapshot.data![index]['pic'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data![index]['vehicle'],
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'MonM',
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            snapshot.data![index]['name'],
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'MonR',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () async {
                          String url =
                              snapshot.data![index]['where'].toString();
                          _launchURL(url);
                        },
                        icon: Material(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ),
                      )),
                  Divider(
                    color: kindaBlack.withOpacity(0.3),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
