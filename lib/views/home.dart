import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/callbacks.dart';
import 'package:restaurant_management/utils/globals.dart';

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
      bottomNavigationBar: StatefulBuilder(
        builder: (BuildContext context, void Function(void Function()) _) {
          return Row(
            children: <Widget>[
              for (final Map<String, dynamic> item in _pages)
                Expanded(
                  child: GestureDetector(
                    onTap: () => _(() => selectedPage = item["title"]),
                    child: AnimatedContainer(
                      duration: 500.ms,
                      decoration: BoxDecoration(color: hexToColor(settings["accent_color"]).withOpacity(.6), borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(item["icon"], size: 15, color: selectedPage == item["title"] ? hexToColor(settings["accent_color"]) : hexToColor(settings["accent_color"])),
                          const SizedBox(height: 10),
                          Text(item["title"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: hexToColor(settings["accent_color"]))),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
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
