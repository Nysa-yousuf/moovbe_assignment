import 'package:flutter/material.dart';
import 'package:moovbe/api/dio_client.dart';
import 'package:moovbe/card/list_card.dart';
import 'package:moovbe/model/driver_list.dart';
import 'package:moovbe/ui/add_driver.dart';

class DriverListScreen extends StatefulWidget {
  // final DriverListResult item;

  const DriverListScreen({
    Key? key,
  }) : super(key: key);

  @override
  DriverListScreenState createState() => DriverListScreenState();
}

class DriverListScreenState extends State<DriverListScreen> {
  DioClient dio = DioClient();
  List<DriverListResult> persons = [];

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    itemDropdownList();
    super.initState();
  }

  Future itemDropdownList() async {
    dio.getDriver().then((value) {
      DriverListModel? salesPersonDetails =
          DriverListModel.fromJson(value.data);

      if (salesPersonDetails.status == true) {
        persons = [];
        for (int i = 0; i < salesPersonDetails.driverList!.length; i++) {
          persons.add(salesPersonDetails.driverList![i]);
        }
        setState(() {});
      } else {}
    }).catchError(
      (e) {
        print(e.runtimeType);
      },
    );
  }

  Future deleteList({required int id}) async {
    dio.deleteDriver(id).then((value) {
      itemDropdownList();
    }).catchError(
      (e) {
        print(e.runtimeType);
      },
    );
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
                  itemCount: persons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DriverList(
                      onClicked: () {
                        deleteList(id: persons[index].id!);
                        /* index == 0 || index == 2
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BusSeat()))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BusSeats()));*/
                      },
                      data: persons[index],
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
