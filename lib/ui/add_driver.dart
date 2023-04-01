import 'package:flutter/material.dart';
import 'package:moovbe/api/dio_client.dart';
import 'package:moovbe/model/driver_list.dart';

class AddDriverPage extends StatefulWidget {
  const AddDriverPage({super.key});

  @override
  AddDriverPageState createState() => AddDriverPageState();
}

class AddDriverPageState extends State<AddDriverPage> {
  final DioClient dio = DioClient();
  bool _isLoading = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController licenceController = TextEditingController();
  final _formKey1 = GlobalKey<FormState>();

  ///add
  Future<dynamic> addDetails({required DriverListResult details}) async {
    setState(() {
      _isLoading = true;
    });
    return dio.postItem(details).then(
      (value) async {
        if (value.data['status'] == true) {
          nameController.clear();
          licenceController.clear();
          Navigator.pop(context);
          setState(() {
            _isLoading = false;
          });
          return true;
        } else {
          setState(() {
            _isLoading = false;
          });
        }
      },
    ).catchError(
      (e) {
        setState(() {
          _isLoading = false;
        });
        throw e;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
              color: Colors.black,
              strokeWidth: 3,
            ))
          : Column(
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
                        "Add Driver",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))
                    ],
                  ),
                ),
                Expanded(
                  child: Form(
                    key: _formKey1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.height * .02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * .07),
                          Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.height * .01),
                            child: TextFormField(
                              controller: nameController,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            .05),
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height * .01),
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                hintText: " Enter Name ",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontFamily: "Axiforma",
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontFamily: "Axiforma",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.height * .01),
                            child: TextFormField(
                              controller: licenceController,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            .05),
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height *
                                          .015),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height *
                                          .015),
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                hintText: "Enter License Number",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontFamily: "verdana_regular",
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                  fontFamily: "verdana_regular",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .09,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        DriverListResult driverList = DriverListResult(
                            id: null,
                            name: nameController.text,
                            licenseNo: licenceController.text);
                        addDetails(details: driverList);
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
                            "Save",
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
