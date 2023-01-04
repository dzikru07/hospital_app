import 'package:flutter/material.dart';

import '../content/home/home_page.dart';

class NavigationBarComponent extends StatefulWidget {
  const NavigationBarComponent({Key? key}) : super(key: key);

  @override
  _NavigationBarComponentState createState() => _NavigationBarComponentState();
}

class _NavigationBarComponentState extends State<NavigationBarComponent> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
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
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? Image.asset(
                        "assets/logo/home_white.png",
                      )
                    : Image.asset(
                        "assets/logo/home_black.png",
                      )),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 1 ? Colors.blue : Colors.transparent),
            child: IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? Image.asset(
                        "assets/logo/articles_white.png",
                      )
                    : Image.asset(
                        "assets/logo/articles_black.png",
                      )),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 2 ? Colors.blue : Colors.transparent),
            child: IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? Image.asset(
                        "assets/logo/search_white.png",
                      )
                    : Image.asset(
                        "assets/logo/search_black.png",
                      )),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 3 ? Colors.blue : Colors.transparent),
            child: IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? Image.asset(
                        "assets/logo/diagram_white.png",
                      )
                    : Image.asset(
                        "assets/logo/diagram_black.png",
                      )),
          ),
        ],
      ),
    );
  }
}
