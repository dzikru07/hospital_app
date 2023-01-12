import 'package:flutter/material.dart';
import 'package:hospital_app/content/home/home_page.dart';

class NavigationBarComponen extends StatefulWidget {
  const NavigationBarComponen({super.key});

  @override
  State<NavigationBarComponen> createState() => _NavigationBarComponenState();
}

class _NavigationBarComponenState extends State<NavigationBarComponen> {
  int pageIndex = 0;

  final pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 0 ? Colors.blue : Colors.transparent),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                enableFeedback: false,
                icon: pageIndex == 0
                    ? Image.asset("assets/logo/home_white.png")
                    : Image.asset("assets/logo/home_black.png")),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 1 ? Colors.blue : Colors.transparent),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                enableFeedback: false,
                icon: pageIndex == 1
                    ? Image.asset("assets/logo/articles_white.png")
                    : Image.asset("assets/logo/articles_black.png")),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 2 ? Colors.blue : Colors.transparent),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                enableFeedback: false,
                icon: pageIndex == 2
                    ? Image.asset("assets/logo/search_white.png")
                    : Image.asset("assets/logo/search_black.png")),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 3 ? Colors.blue : Colors.transparent),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                enableFeedback: false,
                icon: pageIndex == 3
                    ? Image.asset("assets/logo/diagram_white.png")
                    : Image.asset("assets/logo/diagram_black.png")),
          )
        ],
      ),
    );
  }
}
