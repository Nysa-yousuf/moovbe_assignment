import 'package:flutter/material.dart';
import 'package:moovbe/api/dio_client.dart';
import 'package:moovbe/card/list_card.dart';
import 'package:moovbe/model/driver_list.dart';
import 'package:moovbe/ui/add_driver.dart';

class DriverListScreen extends StatefulWidget {
  const DriverListScreen({
    Key? key,
  }) : super(key: key);

  @override
  DriverListScreenState createState() => DriverListScreenState();
}

class DriverListScreenState extends State<DriverListScreen> {
  DioClient dio = DioClient();
  List<DriverListResult> persons = [];

  bool _isLoading = false;

  @override
  void initState() {
    getDriverList();
    super.initState();
  }

  ///get
  Future getDriverList() async {
    setState(() {
      _isLoading = true;
    });
    dio.getDriver().then((value) {
      DriverListModel? salesPersonDetails =
          DriverListModel.fromJson(value.data);

      if (salesPersonDetails.status == true) {
        persons = [];
        for (int i = 0; i < salesPersonDetails.driverList!.length; i++) {
          persons.add(salesPersonDetails.driverList![i]);
        }
        setState(() {
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    }).catchError(
      (e) {
        setState(() {
          _isLoading = false;
        });
        throw e;
      },
    );
  }

  ///delete
  Future deleteList({required int id}) async {
    dio.deleteDriver(id).then((value) {
      getDriverList();
    }).catchError(
      (e) {
        throw e;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.14,
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
                  "Driver List",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
              ],
            ),
          ),
          _isLoading
              ? const Expanded(
                  child: Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                    strokeWidth: 3,
                  )),
                )
              : Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: persons.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DriverList(
                        onClicked: () {
                          deleteList(id: persons[index].id!);
                        },
                        data: persons[index],
                      );
                    },
                  ),
                ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .09,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddDriverPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * .01,
                      right: MediaQuery.of(context).size.height * .01,
                      bottom: MediaQuery.of(context).size.height * .02),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .072,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                      MediaQuery.of(context).size.height * 0.015,
                    )),
                    color: const Color.fromARGB(252, 252, 21, 59),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Add Driver",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
