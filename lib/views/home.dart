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
  ];

  final PageController _pagesController = PageController();

  final GlobalKey<State> _bottomNavKey = GlobalKey<State>();

  @override
  void dispose() {
    _pagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: StatefulBuilder(
        key: _bottomNavKey,
        builder: (BuildContext context, void Function(void Function()) _) {
          return GNav(
            rippleColor: Colors.grey.shade800,
            hoverColor: Colors.grey.shade700,
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            curve: Curves.easeOutExpo,
            duration: 900.ms,
            gap: 8,
            color: Colors.grey.shade800,
            activeColor: Colors.purple,
            iconSize: 24,
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: <GButton>[for (final Map<String, dynamic> page in _pages) GButton(icon: page["icon"], text: page["title"])],
          );
        },
      ),
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) => _pages[index]["page"],
        controller: _pagesController,
      ),
    );
  }
}
