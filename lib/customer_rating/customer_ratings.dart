import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';
// import 'package:ondeindiadriver/constants/color_constants.dart';
// import 'package:ondeindiadriver/repo/main_repo.dart';

class CustomerRatings extends StatefulWidget {
  const CustomerRatings({Key? key}) : super(key: key);

  @override
  State<CustomerRatings> createState() => _CustomerRatingsState();
}

class _CustomerRatingsState extends State<CustomerRatings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: const IconThemeData(color: kindaBlack),
        title: const Text(
          "Customer Ratings",
          style: TextStyle(
            color: kindaBlack,
            fontSize: 15,
            fontFamily: 'MonM',
          ),
        ),
      ),
      body: FutureBuilder(
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
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " “ " +
                                    snapshot.data![index]['comment']
                                        .toString() +
                                    " ” ",
                                style: const TextStyle(
                                  color: kindaBlack,
                                  fontSize: 15,
                                  fontFamily: 'MonM',
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              snapshot.data![index]['star'].toString() == "1"
                                  ? Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: gold,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.red,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.red,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.red,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.red,
                                        ),
                                      ],
                                    )
                                  : snapshot.data![index]['star'].toString() ==
                                          "2"
                                      ? Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: gold,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: gold,
                                            ),
                                            Icon(
                                              Icons.star_outline,
                                              color: Colors.red,
                                            ),
                                            Icon(
                                              Icons.star_outline,
                                              color: Colors.red,
                                            ),
                                            Icon(
                                              Icons.star_outline,
                                              color: Colors.red,
                                            ),
                                          ],
                                        )
                                      : snapshot.data![index]['star']
                                                  .toString() ==
                                              "3"
                                          ? Row(
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: gold,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: gold,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: gold,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  color: Colors.red,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  color: Colors.red,
                                                ),
                                              ],
                                            )
                                          : snapshot.data![index]['star']
                                                      .toString() ==
                                                  "4"
                                              ? Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.star,
                                                      color: gold,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: gold,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: gold,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: gold,
                                                    ),
                                                    Icon(
                                                      Icons.star_outline,
                                                      color: Colors.red,
                                                    ),
                                                  ],
                                                )
                                              : snapshot.data![index]['star']
                                                          .toString() ==
                                                      "5"
                                                  ? Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.star,
                                                          color: gold,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: gold,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: gold,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: gold,
                                                        ),
                                                        Icon(
                                                          Icons.star_outline,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    )
                                                  : Container(),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  snapshot.data![index]['date'].toString(),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'MonR',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: snapshot.data!.length,
                ),
              )
            ],
          );
        },
        future: getCustomerRatings(),
      ),
    );
  }
}
