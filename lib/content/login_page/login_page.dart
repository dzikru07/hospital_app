import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/component/navigation_bar.dart';
import 'package:hospital_app/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/logo/logo.png",
                    height: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Take care of yourself, take care of your friends, your brothers, your family.",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Join our big family.",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/images/home_image.png"),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: Color(0xff0BB5EB),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    focusColor: Color(0xff0BB5EB),
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  NavigationBarComponent())));
                    },
                    child: Container(
                      padding: EdgeInsets.all(18),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Login or Register",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Material(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.greenAccent,
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(9),
                      child: Text("Sign in without logging in",
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.normal)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
