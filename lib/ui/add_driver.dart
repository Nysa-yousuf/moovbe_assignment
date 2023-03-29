import 'package:flutter/material.dart';
import 'package:moovbe/api/dio_client.dart';
import 'package:moovbe/model/driver_list.dart';

class AddDriverPage extends StatefulWidget {
  const AddDriverPage({super.key});

  @override
  AddDriverPageState createState() => AddDriverPageState();
}

class AddDriverPageState extends State<AddDriverPage> {
  late final DioClient dio;

  TextEditingController nameController = TextEditingController();
  TextEditingController licenceController = TextEditingController();

  Future<bool> insertItem({required DriverList details}) async {
    // loading = true;
    return dio.postItem(details).then(
      (value) async {
        if (value['success'] == true) {
          print("success");

          // success = true;
          // loading = false;

          return true;
        } else {
          if (value
              .toString()
              .contains("An internal error occurred during your request")) {
            print("An internal error occurred during your request");
            // errorStore.errorMessage =
            //     "An internal error occurred during your request";
            // success = false;
            // loading = false;
            return false;
          } else if (value.toString().contains("Duplicate item found")) {
            print("Duplicate item found");
            // success = false;
            // loading = false;
            // errorStore.errorMessage = "Duplicate item found";
            return false;
          } else {
            print("not success");
            // errorStore.errorMessage =
            //     "An unKnown Error Occurred.Please try again";
            // success = false;
            // loading = false;
            return false;
          }
        }
      },
    ).catchError(
      (e) {
        print(e);
        // success = false;
        // loading = false;
        // if (e.runtimeType == DioError) {
        //   // errorStore.errorMessage = DioErrorUtil.handleError(e);
        // } else {
        //   print(e.runtimeType);
        // }
        return false;
      },
    );
  }

  @override
  void initState() {
    dio = DioClient();
    super.initState();
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
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 30, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: nameController,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        //add prefix icon

                        // errorText: "Error",

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,

                        hintText: "Enter Name",

                        //make hint text
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontFamily: "Axiforma",
                          fontWeight: FontWeight.w400,
                        ),

                        //create lable
                        labelText: 'Enter Name',
                        //lable style
                        labelStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontFamily: "Axiforma",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: licenceController,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        focusColor: Colors.white,

                        // errorText: "Error",

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,

                        hintText: " Enter License Number",

                        //make hint text
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontFamily: "verdana_regular",
                          fontWeight: FontWeight.w400,
                        ),

                        //create lable
                        labelText: ' Enter License Number',
                        //lable style
                        labelStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontFamily: "verdana_regular",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      margin: const EdgeInsets.only(top: 50),
                      width: MediaQuery.of(context).size.width, height: 60,

                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        //boxShadow: [
                        // BoxShadow(
                        color: Color.fromARGB(252, 252, 21, 59),
                        //  blurRadius: 4,
                        //  offset: const Offset(0, 3),
                        // ),
                        //],
                      ),
                      // margin: EdgeInsets.only(bottom: 2),
                      child: TextButton(
                        style: const ButtonStyle(
                            // backgroundColor:
                            // MaterialStateProperty.resolveWith<Color>(
                            //   (Set<MaterialState> states) {
                            //   if (states.contains(MaterialState.pressed)) {
                            //     return themeData.splashColor;
                            //   }
                            //   return themeData
                            //       .primaryColor; // Use the component's default.
                            // },
                            // ),

                            ),
                        onPressed: () {
                          DriverList driverList = DriverList(
                              id: null,
                              name: nameController.text,
                              licenseNo: licenceController.text);
                          insertItem(details: driverList).then((value) {
                            if (value == true) {
                              nameController.clear();
                              licenceController.clear();
                            }
                          });
                          print(nameController.text);
                        },
                        child: const Text("Save",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 0.5,
                                fontSize: 24)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
