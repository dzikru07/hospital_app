// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/navigation_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "assets/logo/logo.png",
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Take care of yourself, take care of your friends, your brothers, your family.",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Join our big family",
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/home_image.png"),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: const Color(0xff0bb5eb),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  focusColor: const Color(0xff0bb5eb),
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.green,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => NavigationBarComponen())));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
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
              const SizedBox(
                height: 5,
              ),
              Material(
                  child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.greenAccent,
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(9),
                  child: Text(
                    "Sign in without loggin in",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ))
            ],
          )),
        ),
      ),
    );
  }
}
