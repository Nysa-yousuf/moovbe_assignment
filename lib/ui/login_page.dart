import 'package:flutter/material.dart';
import 'package:moovbe/api/dio_client.dart';
import 'package:moovbe/constants/shared_preference_helper.dart';
import 'package:moovbe/model/login_model.dart';
import 'package:moovbe/ui/bus_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late SharedPreferenceHelper _sharedPreferenceHelper;
  DioClient dioClient = DioClient();
  TextEditingController email = TextEditingController()..text = "admin_user";
  TextEditingController password = TextEditingController()
    ..text = "123admin789";

  final _formKey = GlobalKey<FormState>();

  @override
  Future<void> didChangeDependencies() async {
    final SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    _sharedPreferenceHelper = SharedPreferenceHelper(sharedPreference);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                  image: const AssetImage("images/box.png"),
                  fit: BoxFit.fill,
                ),
                Image(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                  image: const AssetImage("images/triangle.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Axiforma',
                            fontSize: 44,
                            letterSpacing: 0),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Manage your bus and drivers",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Axiforma',
                            fontSize: 15,
                            letterSpacing: 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * .03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .07),
                    Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.height * .01),
                      child: TextFormField(
                        controller: email,
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
                                  MediaQuery.of(context).size.width * .05),
                          focusColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey.shade700,
                            size: 18,
                          ),
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
                          hintText: " Enter Email ",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 12,
                            fontFamily: "Axiforma",
                            fontWeight: FontWeight.w400,
                          ),
                          labelText: 'Enter Email',
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
                        controller: password,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        validator: (passCurrentValue) {
                          RegExp regex =
                              RegExp(r'^(?=.*?[a-z])(?=.*?\d).{8,}$');
                          var passNonNullValue = passCurrentValue ?? "";
                          if (passNonNullValue.isEmpty) {
                            return ("Password is required");
                          } else if (passNonNullValue.length < 6) {
                            return ("Password Must be more than 5 characters");
                          } else if (!regex.hasMatch(passNonNullValue)) {
                            return ("Password should contain lower,digit and Special character ");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.width * .05),
                          focusColor: Colors.white,
                          //add prefix icon
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.grey.shade700,
                            size: 18,
                          ),

                          // errorText: "Error",

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * .015),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * .015),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,

                          hintText: " Enter password",

                          //make hint text
                          hintStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 12,
                            fontFamily: "verdana_regular",
                            fontWeight: FontWeight.w400,
                          ),

                          labelText: 'Enter password ',

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
                  loginUsers();
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
                      "Login",
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

  Future<void> loginUsers() async {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Processing Data'),
          backgroundColor: Colors.green.shade300,
        ),
      );
      dioClient.authenticate(email.text, password.text).then(
        (loginResponse) async {
          LoginModel loginData = LoginModel.fromJson(loginResponse.data);
          if (loginData.status == true) {
            await _sharedPreferenceHelper.saveIsLoggedIn(true);
            await _sharedPreferenceHelper.saveAuthToken(loginData.access!);
            await _sharedPreferenceHelper.saveUserName(email.text);
            await _sharedPreferenceHelper
                .saveAssociatedOuIds(loginData.refresh!);
            await _sharedPreferenceHelper.saveOuId(loginData.urlId!);
            if (!mounted) return;
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BusListScreen(),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('something went wrong'),
                backgroundColor: Colors.red.shade300,
              ),
            );
          }
        },
      ).catchError(
        (e) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('please fill all fields'),
          backgroundColor: Colors.red.shade300,
        ),
      );
    }
  }
}
