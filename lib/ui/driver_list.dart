import 'package:flutter/material.dart';
import 'package:moovbe/card/list_card.dart';
import 'package:moovbe/ui/add_driver.dart';
import 'package:moovbe/ui/seat1x3.dart';
import 'package:moovbe/ui/seat2x2.dart';

class DriverListScreen extends StatefulWidget {
  const DriverListScreen({Key? key}) : super(key: key);

  @override
  DriverListScreenState createState() => DriverListScreenState();
}

class DriverListScreenState extends State<DriverListScreen> {
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text("Driver List"),
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return DriverList(
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
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 8, right: 8),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        color: const Color.fromARGB(252, 252, 21, 59),
                        // width: 1.0,
                        style: BorderStyle.solid),
                    //boxShadow: [
                    // BoxShadow(
                    color: const Color.fromARGB(252, 252, 21, 59),
                  ),
                  // color: Color.fromARGB(252, 252, 21, 59),
                  height: 60,
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddDriverPage()));
                      },
                      child: const Text("Add Driver",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.5,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
