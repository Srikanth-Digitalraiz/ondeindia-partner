import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ondeindiapartner/auth/login.dart';
import 'package:ondeindiapartner/constants/color_constants.dart';

class IntroScreens extends StatefulWidget {
  IntroScreens({Key? key}) : super(key: key);

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  int _currentIndex = 0;
  PageController? _pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              _currentIndex = index;
              setState(() {});
            },
            children: [
              //intro 1
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/taxi_route.png',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Taxi Route",
                    style: TextStyle(
                      fontFamily: 'MonB',
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You can set up Taxi routes as well as Monitor taxis",
                    style: TextStyle(
                      fontFamily: 'MonR',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
              //intro 2
              Column(
                children: [
                  Image.asset(
                    'assets/images/add_driver.png',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Add Vehicle",
                    style: TextStyle(
                      fontFamily: 'MonB',
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You can Add a vehicle",
                    style: TextStyle(
                      fontFamily: 'MonR',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
              //intro 3
              Column(
                children: [
                  Image.asset(
                    'assets/images/add_driver.png',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Add Driver",
                    style: TextStyle(
                      fontFamily: 'MonB',
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You can Attach driver to any added vehicle",
                    style: TextStyle(
                      fontFamily: 'MonR',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ]),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 25),
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // if (_currentIndex < 2) {
                  //   setState(() {
                  //     _currentIndex++;
                  //   });
                  // } else {
                  //   Navigator.pushReplacement(
                  //     context,
                  //     CupertinoPageRoute(
                  //       builder: (context) => LoginPage(),
                  //     ),
                  //   );
                  // }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _currentIndex == 2 ? "Done" : "Next",
                    style: TextStyle(
                      fontFamily: 'MonR',
                      fontSize: 13,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 100,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < 3; i++)
                            if (i == _currentIndex) ...[circleBar(true)] else
                              circleBar(false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _currentIndex == 2 ? "Done" : "Skip",
                    style: TextStyle(
                      fontFamily: 'MonR',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Positioned(
      //   right: MediaQuery.of(context).size.width / 3,
      //   bottom: 15,
      //   child: Align(
      //     alignment: Alignment.center,
      //     child: TextButton(
      //       style: ButtonStyle(
      //           backgroundColor: MaterialStateProperty.all(Colors.transparent)),
      //       onPressed: () {
      //         if (_currentIndex < 2) {
      //           _pageController!.animateToPage(_currentIndex + 1,
      //               duration: Duration(seconds: 1),
      //               curve: Curves.fastOutSlowIn);
      //         } else {
      //           // Get.to(
      //           //   () => LoginScreen(
      //           //     a: widget.analytics,
      //           //     o: widget.observer,
      //           //   ),
      //           // );
      //         }
      //       },
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Text(
      //             _currentIndex < 2 ? 'Next' : 'Get Started',
      //             textAlign: TextAlign.center,
      //             style: TextStyle(
      //               color: Color(0xffDC2E45),
      //               letterSpacing: 2.0,
      //               fontSize: 16,
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //           Icon(
      //             Icons.arrow_right_rounded,
      //             size: 30,
      //             color: Color(0xffDC2E45),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // )
    ]));
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 50),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 5 : 5,
      width: isActive ? 23 : 10,
      decoration: BoxDecoration(
          color: isActive ? primaryColor : primaryColor.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: _currentIndex);
    _pageController!.addListener(() {});
  }
}
