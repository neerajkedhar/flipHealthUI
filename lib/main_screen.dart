// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  Color tealer = Color(0xff52c694).withOpacity(0.2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
        backgroundColor: Color(0xff52c694),
        elevation: 0,
        title: const Center(
          child: Text("PROFILE"),
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: const BoxDecoration(
                    color: Color(0xff52c694),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person_rounded,
                            size: 130,
                            color: Colors.white.withAlpha(100),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "John Doe",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              SizedBox(height: 5),
                              const Text(
                                "San Francisco, CA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Cont(), Cont2(), Cont3()],
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(4, 8),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 250,
              width: 250,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 180,
                            width: 180,
                            child: CircularPercentIndicator(
                              radius: 180,
                              lineWidth: 8,
                              backgroundColor: Colors.grey.withOpacity(0.05),
                              percent: 0.7,
                              progressColor: Color(0xff42d2d6),
                              circularStrokeCap: CircularStrokeCap.round,
                              animation: true,
                            ),
                          ),
                        )),
                        Positioned(
                            child: Align(
                          alignment: Alignment.center,
                          child: CircularPercentIndicator(
                            radius: 150,
                            lineWidth: 8,
                            backgroundColor: Colors.grey.withOpacity(0.05),
                            percent: 0.6,
                            progressColor: Color(0xffffba8c),
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                          ),
                        )),
                        Positioned(
                            child: Align(
                          alignment: Alignment.center,
                          child: CircularPercentIndicator(
                            radius: 120,
                            lineWidth: 8,
                            backgroundColor: Colors.grey.withOpacity(0.05),
                            percent: 0.2,
                            progressColor: Color(0xffdeb6c5),
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                          ),
                        )),
                        Positioned(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Disconnected",
                                  style: TextStyle(
                                      color: Color(0xff21557b),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ))),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_constructors
                        children: [
                          Text(
                            "Device ID",
                            style: TextStyle(
                                color: Color(0xff21557b).withAlpha(80),
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          Text(
                            "XD12-B12-Z22",
                            style: TextStyle(
                                color: Color(0xff21557b),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )
                        ],
                      ),
                      ElevatedButton(
                          // ignore: avoid_returning_null_for_void
                          onPressed: () => null,
                          child: Text(" Connect "),
                          style: ButtonStyle(
                              // backgroundColor: Colors.blueGrey,
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff21557b)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cont extends StatelessWidget {
  Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 30),
      child: Container(
        width: 120,
        height: 70,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF216d6b),
                  Color(0xFF4acac5),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            // color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ignore: prefer_const_constructors
            Text(
              "Temperature",
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_constructors
              children: [
                Icon(
                  Icons.thermostat_rounded,
                  color: Colors.white.withOpacity(0.7),
                  size: 30,
                ),
                Text(
                  "65 C",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Cont2 extends StatelessWidget {
  Cont2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 30),
      child: Container(
        width: 120,
        height: 70,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF94714a),
                  Color(0xFFf7be94),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            // color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ignore: prefer_const_constructors
            Text(
              "Battery",
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_constructors
              children: [
                Icon(
                  Icons.battery_full_rounded,
                  color: Colors.white.withOpacity(0.7),
                  size: 30,
                ),
                Text(
                  "100 %",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Cont3 extends StatelessWidget {
  Cont3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 30),
      child: Container(
        width: 120,
        height: 70,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF846573),
                  Color(0xFFdeb6c5),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            // color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ignore: prefer_const_constructors
            Text(
              "ECG",
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_constructors
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white.withOpacity(0.7),
                  size: 30,
                ),
                Text(
                  "100",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
