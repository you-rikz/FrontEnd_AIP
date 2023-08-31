import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:front_end_apt_iba_pa/pages/fav_page.dart';
import 'package:front_end_apt_iba_pa/user_side/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Replace these with your actual page widgets
    HomePage(),
    FavPage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          _pages[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              color: Color(0xffE8EDFB),
               buttonBackgroundColor:
                  Color(0xff232A3D),
              animationDuration: Duration(milliseconds: 300),
              onTap: _onTap,
              index: _currentIndex,
              items: [
                Icon(
                  Icons.search,
                  color: _currentIndex == 0
                      ? Color(0xffE8EDFB)
                      : Color(0xff232A3D),
                ),
                Icon(
                  Icons.favorite_outline,
                  color: _currentIndex == 1
                      ? Color(0xffE8EDFB)
                      : Color(0xff232A3D),
                ),
                Image.asset('images/single_logo.png'),
                Icon(
                  Icons.message_outlined,
                  color: _currentIndex == 3
                      ? Color(0xffE8EDFB)
                      : Color(0xff232A3D),
                ),
                Icon(
                  Icons.person,
                  color: _currentIndex == 4
                      ? Color(0xffE8EDFB)
                      : Color(0xff232A3D),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
