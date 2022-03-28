import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/mapped_list/mapping_details.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';

class MappedList extends StatefulWidget {
  MappedList({Key? key}) : super(key: key);

  @override
  State<MappedList> createState() => _MappedListState();
}

class _MappedListState extends State<MappedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "Mapped Data",
          style: TextStyle(
            color: kindaBlack,
            fontSize: 15,
            fontFamily: 'MonM',
          ),
        ),
      ),
      body: _mappingList(),
    );
  }

  Widget _mappingList() {
    return FutureBuilder(
      future: getmappingList(),
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
            return Column(
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index]['driver_name'],
                              style: TextStyle(
                                color: kindaBlack,
                                fontSize: 16,
                                fontFamily: 'MonS',
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              snapshot.data![index]['driver_number'].toString(),
                              style: TextStyle(
                                color: kindaBlack,
                                fontSize: 10,
                                fontFamily: 'MonR',
                              ),
                            ),
                          ],
                        ),
                        Icon(LineIcons.arrowRight),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index]['car_name'],
                              style: TextStyle(
                                color: kindaBlack,
                                fontSize: 16,
                                fontFamily: 'MonS',
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              snapshot.data![index]['car_number'].toString(),
                              style: TextStyle(
                                color: kindaBlack,
                                fontSize: 10,
                                fontFamily: 'MonR',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: MappingDetails(
                              driverImage: snapshot.data![index]['driver_image']
                                  .toString(),
                              driverMobile: snapshot.data![index]
                                      ['driver_number']
                                  .toString(),
                              driverName: snapshot.data![index]['driver_name']
                                  .toString(),
                              vehicleImage:
                                  snapshot.data![index]['car_image'].toString(),
                              vehicleName:
                                  snapshot.data![index]['car_name'].toString(),
                              vehicleNumber: snapshot.data![index]['car_number']
                                  .toString(),
                              totalTrips: snapshot.data![index]['total_trips']
                                  .toString(),
                              totalEarning: snapshot.data![index]
                                      ['total_earning']
                                  .toString(),
                            ),
                          );
                        });
                  },
                ),
                Divider()
              ],
            );
          },
        );
      },
    );
  }
}
