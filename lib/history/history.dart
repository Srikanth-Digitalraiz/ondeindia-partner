import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';
import 'package:ondeindiapartner/repo/mainrepo.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: kindaBlack),
        title: const Text(
          "History",
          style: TextStyle(
            color: kindaBlack,
            fontSize: 15,
            fontFamily: 'MonM',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Trips report",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonS',
                ),
              ),
            ),
            SfCircularChart(
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                RadialBarSeries<GDPData, String>(
                    gap: '3.0',
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                    ),
                    enableTooltip: true,
                    cornerStyle: CornerStyle.bothCurve,
                    maximumValue: 350)
              ],
            ),
            Divider(),
            _data()
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Today', 90),
      GDPData('Weekly', 70),
      GDPData('Monthly', 280),
    ];
    return chartData;
  }

  Widget _data() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
        future: getNotifications(),
        builder: (context, AsyncSnapshot<List> snapshot) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trips History",
                style: TextStyle(
                  color: kindaBlack,
                  fontSize: 15,
                  fontFamily: 'MonS',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    snapshot.data![index]['vehicleno'],
                                    style: TextStyle(
                                      color: kindaBlack,
                                      fontSize: 15,
                                      fontFamily: 'MonS',
                                    ),
                                  ),
                                  Text(
                                    snapshot.data![index]['driver'],
                                    style: TextStyle(
                                      color: kindaBlack,
                                      fontSize: 15,
                                      fontFamily: 'MonS',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
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
                                            width: 13,
                                          ),
                                          Icon(LineIcons.arrowRight),
                                          SizedBox(
                                            width: 13,
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
                                    ),
                                    Container(
                                      color: Colors.green,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Completed",
                                          style: const TextStyle(
                                            fontFamily: 'MonS',
                                            fontSize: 12,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rental",
                                        style: const TextStyle(
                                          fontFamily: 'MonS',
                                          fontSize: 15,
                                          color: kindaBlack,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        color: Colors.green,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "1200/-",
                                            style: const TextStyle(
                                              fontFamily: 'MonS',
                                              fontSize: 12,
                                              color: whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                    color: whiteColor,
                                  ),
                                  child: Icon(LineIcons.download),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
