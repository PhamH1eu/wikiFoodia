import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'favorites_page.dart';
import 'profile_page.dart';
import 'setting_page.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final Set<StatefulWidget> _pages = {
    MainPage(),
    ProfilePage(),
    FavoritesPage(),
    SettingPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.grey.shade400,
            activeColor: Color(0xfff97350),
            tabBackgroundColor: const Color.fromARGB(255, 245, 221, 221),
            padding: EdgeInsets.all(16),
            gap: 8,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
            tabs: const [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.person, text: "Profile"),
              GButton(icon: Icons.favorite, text: "Favorites"),
              GButton(icon: Icons.settings,text: "Settings"),
            ],
          ),
        ),
      ),
    );
  }
}
