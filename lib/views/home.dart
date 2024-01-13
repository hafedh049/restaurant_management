import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> _pages = <Map<String, dynamic>>[
    <String, dynamic>{"title": "Notifications", "icon": Bootstrap.bell, "page": Container()},
    <String, dynamic>{"title": "Category", "icon": Bootstrap.circle, "page": Container()},
    <String, dynamic>{"title": "Home", "icon": Bootstrap.house, "page": Container()},
    <String, dynamic>{"title": "Orders", "icon": Bootstrap.list_task, "page": Container()},
    <String, dynamic>{"title": "Cart", "icon": Bootstrap.cart, "page": Container()},
    <String, dynamic>{"title": "Settings", "icon": Icons.settings, "page": Container()},
  ];

  final PageController _pagesController = PageController();

  @override
  void dispose() {
    _pagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey.shade800,
        hoverColor: Colors.grey.shade800,
        haptic: true,
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.black, width: 1),
        tabBorder: Border.all(color: Colors.grey, width: 1),
        tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)],
        curve: Curves.easeOutExpo,
        duration: 500.ms,
        gap: 8,
        color: Colors.grey.shade800,
        activeColor: Colors.purple,
        iconSize: 24,
        tabBackgroundColor: Colors.purple.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tabs: <GButton>[
          GButton(icon: LineIcons.home, text: 'Home'),
          GButton(icon: LineIcons.heart_o, text: 'Likes'),
          GButton(icon: LineIcons.search, text: 'Search'),
          GButton(icon: LineIcons.user, text: 'Profile'),
        ],
      ),
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) => _pages[index]["page"],
        controller: _pagesController,
      ),
    );
  }
}
