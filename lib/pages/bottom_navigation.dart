import 'package:click_yab/component/device_sizes.dart';
import 'package:click_yab/pages/cart.dart';
import 'package:click_yab/pages/coupon.dart';
import 'package:click_yab/pages/home.dart';
import 'package:click_yab/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentItemSelected = 0;
  DeviceSize _size;

  final pages = [
    ProfilePage(),
    CouponPage(),
    CartPage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    _size = DeviceSize(context);

    return Scaffold(
      body: pages[_currentItemSelected],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.redAccent,
        currentIndex: _currentItemSelected,
        onTap: (int itemIndex) {
          _currentItemSelected = itemIndex;
          setState(() {

          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _bottomIcon(Icons.person),
            title: Center(),
          ),
          BottomNavigationBarItem(
            icon: _bottomIcon(Icons.loyalty),
            title: Center(),
          ),
          BottomNavigationBarItem(
            icon: _bottomIcon(Icons.business_center),
            title: Center(),
          ),
          BottomNavigationBarItem(
            icon: _bottomIcon(Icons.local_offer),
            title: Center(),
          ),
        ],
      ),
    );
  }

  _bottomIcon(IconData icon) => Container(
    padding: EdgeInsets.only(
      top: 16,
      bottom: 16,
    ),
    child: Icon(
      icon,
      size: _size.height/30,
    ),
  );
}
