import 'package:flutter/material.dart';

import 'bottom_nav_bar_screens/Sell_page.dart';
import 'bottom_nav_bar_screens/profile_page.dart';
import 'bottom_nav_bar_screens/searchpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List pages = [
  const HomeScreen(),
  const SearchPage(),
  const SellingPage(),
  const ProfilePage()
];

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            // backgroundColor: const Color.fromRGBO(39, 109, 171, 1),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Sell'),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.person),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
