import 'package:flutter/material.dart';

class BusSeats extends StatefulWidget {
  const BusSeats({Key? key}) : super(key: key);

  @override
  State<BusSeats> createState() => _BusSeatsState();
}

class _BusSeatsState extends State<BusSeats> {
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
            child: Text("KSRTC Swift Scania P-series"),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  // width: 40,
                  height: 150,
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Rohit Sharma",
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Axiforma',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                              Text(
                                "License no: PJ515196161655",
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Axiforma',
                                    fontSize: 11,
                                    letterSpacing: 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Image(
                            // alignment: Alignment.bottomRight,
                            image: AssetImage("images/driver.png"),
                            fit: BoxFit.contain,
                            // width: 100,
                            height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: Colors.grey.shade300,
                      // width: 1.0,
                      style: BorderStyle.solid),
                  //boxShadow: [
                  // BoxShadow(
                  color: Colors.grey.shade50,
                ),
                // height: 200,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage("images/seat1x3.png"),
                    height: 400,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
