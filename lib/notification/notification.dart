import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "Notifications",
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
            child: _getNotifications(),
          ),
        ],
      ),
    );
  }

  Widget _getNotifications() {
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
              child: ListTile(
                tileColor: snapshot.data![index]['type'] == "Alert"
                    ? Colors.red.withOpacity(0.1)
                    : snapshot.data![index]['type'] == "Update"
                        ? Colors.green.withOpacity(0.1)
                        : Colors.blue.shade50,
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index]['vehicleno'],
                              style: const TextStyle(
                                fontFamily: 'MonS',
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              snapshot.data![index]['info'],
                              style: TextStyle(
                                fontFamily: 'MonR',
                                fontSize: 10,
                                color: Colors.grey.shade600,
                              ),
                            )
                          ],
                        ),
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   child: snapshot.data![index]['type'] == "Update"
                      //       ? Lottie.asset(
                      //           'assets/animations/done.json',
                      //           height: 50,
                      //           width: 50,
                      //           fit: BoxFit.cover,
                      //         )
                      //       : snapshot.data![index]['type'] == "Alert"
                      //           ? Lottie.asset(
                      //               'assets/animations/alert.json',
                      //               height: 50,
                      //               width: 50,
                      //               fit: BoxFit.cover,
                      //             )
                      //           : Lottie.asset(
                      //               'assets/animations/info.json',
                      //               height: 50,
                      //               width: 50,
                      //               fit: BoxFit.cover,
                      //             ),
                      // )
                    ],
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
/*
ListTile(
              tileColor: whiteColor,
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 3.0, right: 7.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme.of(context).primaryColor),
                                // height: ,
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.self_improvement,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                "Greetings",
                                style: TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                            child: Text(
                              "Welcome User to AgroTeck we hope you experience the best of the app and we would love to have your feedbacks as well in the upcomming days \n \n Happy Shoppin",
                              style: TextStyle(
                                fontFamily: 'MonS',
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_pkanqwys.json',
                        height: 180,
                        width: MediaQuery.of(context).size.width),
                  ],
                ),
              ),
            ),
 */
