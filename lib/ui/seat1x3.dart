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
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            color: Colors.black,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                    child: Text(
                  "KSRTC Swift Scania P-series",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.010,
                  right: MediaQuery.of(context).size.height * 0.012),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.01),
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.010),
                  height: MediaQuery.of(context).size.height * 0.2,
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.03,
                              top: MediaQuery.of(context).size.height * 0.03),
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
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Image(
                            image: const AssetImage("images/driver.png"),
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.2,
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
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.width * 0.15,
                right: MediaQuery.of(context).size.width * 0.15),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                      MediaQuery.of(context).size.width * 0.015)),
                  border: Border.all(
                      color: Colors.grey.shade300,
                      // width: 1.0,
                      style: BorderStyle.solid),
                  //boxShadow: [
                  // BoxShadow(
                  color: Colors.grey.shade50,
                ),
                // height: 200,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                  child: Image(
                    image: const AssetImage("images/seat1x3.png"),
                    height: MediaQuery.of(context).size.width * 0.99,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
