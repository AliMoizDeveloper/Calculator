import 'dart:async';
import 'package:get/get.dart';

import 'package:calculator_app/FirstScreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Get.to(FirstScreen(),
          transition: Transition.zoom, duration: Duration(seconds: 2));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.white,
        // body: Column(
        //   children: [
        //     Expanded(
        //       child: Container(
        //         height: 250,
        //         width: MediaQuery.of(context).size.width,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Align(
        //               alignment: Alignment.center,
        //               child: Text(
        //                 'MY ',
        //                 style: TextStyle(color: Colors.white, fontSize: 40),
        //               ),
        //             ),
        //             Align(
        //               alignment: Alignment.center,
        //               child: Text(
        //                 'Calculator ',
        //                 style: TextStyle(color: Colors.white, fontSize: 40),
        //               ),
        //             ),
        //           ],
        //         ),
        //         decoration: BoxDecoration(
        //             color: Color(0xff2d7530),
        //             borderRadius: BorderRadius.only(
        //                 bottomLeft: Radius.circular(200),
        //                 bottomRight: Radius.circular(200))),
        //       ),
        //     ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage('Images/calculator.jpg'),
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     Get.to(FirstScreen(),
        //         transition: Transition.upToDown,
        //         duration: Duration(milliseconds: 1000));
        //   },
        //   child: Container(
        //     height: 50,
        //     width: MediaQuery.of(context).size.width * 0.5,
        //     color: Colors.amber,
        //     child: Center(child: Text('click Me')),
        //   ),
        // ),
        //   Container(
        //     //width: MediaQuery.of(context).size.width,
        //     //padding: const EdgeInsets.all(8.0),
        //     margin: EdgeInsets.all(20),
        //     //alignment: Alignment.center,
        //     //color: Colors.amber,
        //     child: Text(
        //       'Welcome to My Calculator',
        //       style: TextStyle(fontSize: 30, color: Color(0xff2d7530)),
        //     ),
        //   ),
        //   Expanded(
        //       child: Container(
        //     // alignment: Alignment.bottomCenter,
        //     decoration: BoxDecoration(
        //       color: Color(0xff2d7530),
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(200),
        //         topRight: Radius.circular(200),
        //       ),
        //     ),
        //     child: Container(
        //       alignment: Alignment.bottomCenter,
        //       padding: EdgeInsets.only(left: 30, right: 15, bottom: 10),
        //       child: Text(
        //         'The first handheld calculator was a 1967 prototype called Cal Tech, whose development was led by Jack Kilby at Texas Instruments in a research project to produce a portable calculator. It could add, multiply, subtract, and divide, and its output device was a paper tape',
        //         style: TextStyle(fontSize: 15, color: Colors.white),
        //       ),
        //     ),
        //   ))
        // ],
      ),
    );
  }
}
