import 'package:flutter/material.dart';
import 'package:moovbe/card/list_card.dart';
import 'package:moovbe/driver_list.dart';
import 'package:moovbe/seat1x3.dart';
import 'package:moovbe/seat2x2.dart';

class BusListScreen extends StatefulWidget {
  const BusListScreen({Key? key}) : super(key: key);

  @override
  BusListScreenState createState() => BusListScreenState();
}

class BusListScreenState extends State<BusListScreen> {
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  // margin: EdgeInsets.only(top: 100),
                  color: Colors.black,
                  height: 160,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.all(60),
                    child: Image(
                      image: AssetImage("images/moovlogo.png"),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 40,
                          height: 180,
                          alignment: Alignment.center,
                          color: const Color.fromARGB(252, 252, 21, 59),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6, top: 20),
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
                                            fontSize: 22,
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
                              const Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 80, bottom: 20.0),
                                  child: Image(
                                    alignment: Alignment.bottomRight,
                                    image: AssetImage("images/bus.png"),
                                    fit: BoxFit.cover,
                                    // width: 100,
                                    height: 200,
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
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DriverListScreen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 40,
                            height: 180,
                            alignment: Alignment.center,
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 20),
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
                                                fontSize: 22,
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
                                const Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child: Image(
                                      // alignment: Alignment.bottomRight,
                                      image: AssetImage("images/driver.png"),
                                      fit: BoxFit.cover,
                                      // width: 100,
                                      height: 180,
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
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
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
