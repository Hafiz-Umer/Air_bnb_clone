import 'package:airbnb_clone_flutter/screens/map_screen.dart';
import 'package:airbnb_clone_flutter/screens/saved_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    double _labelFontSize = 9;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          Center(
            child: MapScreen(),
          ),
          Container(
            child: SavedScreen(),
          ),
          Center(
            child: Text("Trips Screen"),
          ),
          Center(
            child: Text("Messages Screen"),
          ),
          Center(
            child: Text("Profile Screen"),
          ),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: CupertinoTabBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "images/icons/search.png",
                  ),
                  size: 27,
                  color: (_page == 0) ? Colors.red : Colors.black,
                ),
                title: Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: _labelFontSize,
                      color: Colors.black,
                      fontWeight:
                          (_page == 0) ? FontWeight.bold : FontWeight.normal),
                ),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/icons/heart_black.png"),
                    size: 27, color: (_page == 1) ? Colors.red : Colors.black),
                title: Text(
                  'Saved',
                  style: TextStyle(
                      fontSize: _labelFontSize,
                      color: Colors.black,
                      fontWeight:
                          (_page == 1) ? FontWeight.bold : FontWeight.normal),
                ),
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage(
                        "images/icons/airbnb.png",
                      ),
                      size: 27,
                      color: (_page == 2) ? Colors.red : Colors.black),
                  title: Text("Trips",
                      style: TextStyle(
                          fontSize: _labelFontSize,
                          color: Colors.black,
                          fontWeight: (_page == 2)
                              ? FontWeight.bold
                              : FontWeight.normal))),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("images/icons/text-message.png"),
                    size: 27,
                    color: (_page == 3) ? Colors.red : Colors.black,
                  ),
                  title: Text("Inbox",
                      style: TextStyle(
                          fontSize: _labelFontSize,
                          color: Colors.black,
                          fontWeight: (_page == 3)
                              ? FontWeight.bold
                              : FontWeight.normal))),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("images/icons/user.png"),
                  size: 27,
                  color: (_page == 4) ? Colors.red : Colors.black,
                ),
                title: Text("Profile",
                    style: TextStyle(
                        fontSize: _labelFontSize,
                        color: Colors.black,
                        fontWeight: (_page == 4)
                            ? FontWeight.bold
                            : FontWeight.normal)),
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }
}
