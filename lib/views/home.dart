import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sidebarx/sidebarx.dart';

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

  final SidebarXController _sidebarXController = SidebarXController(selectedIndex: 2);

  final GlobalKey<State> _bottomNavKey = GlobalKey<State>();

  @override
  void dispose() {
    _pagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          StatefulBuilder(
            key: _bottomNavKey,
            builder: (BuildContext context, void Function(void Function()) _) {
              return SizedBox(
                width: 100,
                child: SidebarX(
                  controller: _sidebarXController,
                  items: <SidebarXItem>[
                    for (final Map<String, dynamic> page in _pages)
                      SidebarXItem(
                        icon: page["icon"],
                        label: page["title"],
                        onTap: () => _pagesController.jumpToPage(_pages.indexOf(page)),
                      ),
                  ],
                ),
              );
            },
          ),
          Expanded(
            child: PageView.builder(
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) => _pages[index]["page"],
              controller: _pagesController,
            ),
          ),
        ],
      ),
    );
  }
}
