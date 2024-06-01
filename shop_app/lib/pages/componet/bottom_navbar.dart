import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/componet/card_screen.dart';
import 'package:shop_app/pages/shop_screen.dart';

class BottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GNav(
          onTabChange: onTabChange,
          tabBorderRadius: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          color: Color.fromARGB(255, 193, 191, 191),
          activeColor: Colors.grey[700],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ]),
    );
  }
}
