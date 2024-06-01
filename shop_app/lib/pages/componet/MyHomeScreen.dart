import 'package:flutter/material.dart';
import 'package:shop_app/pages/componet/bottom_navbar.dart';
import 'package:shop_app/pages/componet/card_screen.dart';
import 'package:shop_app/pages/shop_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int setindex = 0;

  void setIndex(int index) {
    setState(() {
      setindex = index;
    });
  }

  final List<Widget> screen = [
    const ShopScreen(),
    const CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/logo2.png',
                height: 200,
                width: 100,
                color: Colors.white,
              ),
            ),
            const Divider(color: Colors.white),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: screen[setindex],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => setIndex(index),
      ),
    );
  }
}
