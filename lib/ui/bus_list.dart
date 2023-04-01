import 'package:flutter/material.dart';
import 'package:moovbe/card/list_card.dart';
import 'package:moovbe/ui/driver_list.dart';
import 'package:moovbe/ui/seat1x3.dart';
import 'package:moovbe/ui/seat2x2.dart';

class BusListScreen extends StatefulWidget {
  const BusListScreen({
    Key? key,
  }) : super(key: key);

  @override
  BusListScreenState createState() => BusListScreenState();
}

class BusListScreenState extends State<BusListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * .06),
                    child: const Image(
                      image: AssetImage("images/moovlogo.png"),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .020),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * .012),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          height: MediaQuery.of(context).size.height * 0.23,
                          alignment: Alignment.center,
                          color: const Color.fromARGB(252, 252, 21, 59),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * .02,
                                    top: MediaQuery.of(context).size.height *
                                        0.028,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Bus",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Axiforma',
                                            fontSize: 24,
                                            letterSpacing: 0),
                                      ),
                                      Text(
                                        "Manage your bus",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Axiforma',
                                            fontSize: 5,
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
                                      top: MediaQuery.of(context).size.height *
                                          .09,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              .03),
                                  child: Image(
                                    alignment: Alignment.bottomRight,
                                    image: const AssetImage("images/bus.png"),
                                    fit: BoxFit.cover,
                                    height: MediaQuery.of(context).size.height *
                                        .16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * .018,
                          right: MediaQuery.of(context).size.height * .022),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DriverListScreen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .012),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: MediaQuery.of(context).size.height * 0.23,
                            alignment: Alignment.center,
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.025,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.028),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: const Text(
                                            "Driver",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Axiforma',
                                                fontSize: 24,
                                                letterSpacing: 0),
                                          ),
                                        ),
                                        const Text(
                                          "Manage your Drivers",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'Axiforma',
                                              fontSize: 6,
                                              letterSpacing: 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.06),
                                    child: Image(
                                      image:
                                          const AssetImage("images/driver.png"),
                                      fit: BoxFit.cover,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.02),
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text("21 Buses Found")),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: 21,
                  itemBuilder: (BuildContext context, int index) {
                    return BusList(
                      onClicked: () {
                        index == 0 || index == 2
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BusSeat()))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BusSeats()));
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
