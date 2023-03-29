import 'package:flutter/material.dart';
import 'package:moovbe/ui/bus_list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Stack(
          children: [
            Column(
              children: const [
                Image(image: AssetImage("images/box.png")),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Image(
                image: AssetImage("images/triangle.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 110),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Axiforma',
                        fontSize: 45,
                        letterSpacing: 0),
                  ),
                  Text(
                    "Manage your bus and drivers",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Axiforma',
                        fontSize: 16,
                        letterSpacing: 0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 300, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: email,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      onChanged: (value) {
                        setState(() {
                          email.text = value.toString();
                        });
                      },
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        //add prefix icon
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey.shade700,
                        ),

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

                        hintText: " Enter Email ",

                        //make hint text
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontFamily: "Axiforma",
                          fontWeight: FontWeight.w400,
                        ),

                        //create lable
                        labelText: 'Enter Email',
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
                      controller: password,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      onChanged: (value) {
                        setState(() {
                          email.text = value.toString();
                        });
                      },
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        //add prefix icon
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.grey.shade700,
                        ),

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

                        hintText: " Enter password",

                        //make hint text
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          fontFamily: "verdana_regular",
                          fontWeight: FontWeight.w400,
                        ),

                        //create lable
                        labelText: 'Enter password ',
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
                    padding:
                        const EdgeInsets.only(left: 24, top: 150, right: 24),
                    child: Container(
                      margin: const EdgeInsets.only(top: 100),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BusListScreen()));
                        },
                        child: const Text("Login",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 0.5)),
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
