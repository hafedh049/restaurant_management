import 'package:flutter/material.dart';
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
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) => _pages[index]["page"],
        controller: _pagesController,
      ),
    );
  }
}
