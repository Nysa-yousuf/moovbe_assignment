import 'package:flutter/material.dart';
import 'package:moovbe/constants/preferences.dart';
import 'package:moovbe/ui/bus_list.dart';
import 'package:moovbe/ui/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 252, 21, 59),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * .05),
                  child: Image(
                    width: MediaQuery.of(context).size.width * .6,
                    image: const AssetImage("images/moovlogo.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () async {
                    SharedPreferences preferences =
                        await SharedPreferences.getInstance();

                    if (preferences.getBool(Preferences.isLoggedIn) ?? false) {
                      if (!mounted) return;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BusListScreen(),
                        ),
                      );
                    } else {
                      if (!mounted) return;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    }
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
                      color: Colors.white,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color.fromARGB(252, 252, 21, 59),
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
      ),
    );
  }
}
