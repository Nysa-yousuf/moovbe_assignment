/*
import 'package:flutter/material.dart';

import 'custom_image.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({Key? key, required this.data}) : super(key: key);
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        height: 130,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            CustomImage(
              data["image"],
              radius: 20,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.white.withOpacity(.01),
                      ])),
            ),
            Positioned(
              bottom: 12,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["name"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.place_outlined,
                        color: Colors.white,
                        size: 13,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        data["location"],
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
*/
import 'package:flutter/material.dart';
import 'package:moovbe/model/driver_list.dart';

class BusList extends StatelessWidget {
  final VoidCallback onClicked;

  const BusList({super.key, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.015,
            horizontal: MediaQuery.of(context).size.height * 0.015),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.height * 0.01),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.height * 0.020),
                    bottomLeft: Radius.circular(
                        MediaQuery.of(context).size.height * 0.020),
                  ),
                  color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.015,
                        bottom: MediaQuery.of(context).size.height * 0.012),
                    child: Image(
                      alignment: Alignment.bottomRight,
                      image: const AssetImage("images/buslist.png"),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                  // ),
                  // ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "KSRTC",
                            style: TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 15,
                                letterSpacing: 0),
                          ),
                          Text(
                            "Swift Scania P-series",
                            style: TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 12,
                                letterSpacing: 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height * 0.015),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height * 0.010)),
                          color: const Color.fromARGB(252, 252, 21, 59),
                        ),
                        child: TextButton(
                          style: const ButtonStyle(),
                          onPressed: onClicked,
                          child: const Text("Manage",
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 0.5)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DriverList extends StatelessWidget {
  final VoidCallback onClicked;
  final DriverListResult data;

  const DriverList({super.key, required this.onClicked, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.014,
            horizontal: MediaQuery.of(context).size.height * 0.020),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.height * 0.020),
                    bottomLeft: Radius.circular(
                        MediaQuery.of(context).size.height * 0.020),
                  ),
                  color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        bottom: MediaQuery.of(context).size.height * 0.01),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.16,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        // color: bgColor,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Image(
                        alignment: Alignment.bottomRight,
                        image: AssetImage("images/driver_list.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // ),
                  // ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          top: MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name!,
                            maxLines: 2,
                            style: const TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 15,
                                letterSpacing: 0),
                          ),
                          Text(
                            data.licenseNo!,
                            style: const TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 12,
                                letterSpacing: 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.015),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height * 0.010)),
                          color: const Color.fromARGB(252, 252, 21, 59),
                        ),
                        child: TextButton(
                          style: const ButtonStyle(),
                          onPressed: onClicked,
                          child: const Text("Delete",
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 0.5)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
