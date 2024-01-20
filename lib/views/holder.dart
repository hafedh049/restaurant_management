import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/globals.dart';

class Holder extends StatefulWidget {
  const Holder({super.key});

  @override
  State<Holder> createState() => _HolderState();
}

class _HolderState extends State<Holder> {
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
          return Container(
            padding: const EdgeInsets.all(8),
            color: settings["main_color"],
            child: Row(
              children: <Widget>[
                for (final Map<String, dynamic> item in _pages)
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _(() => selectedPage = item["title"]),
                      child: AnimatedContainer(
                        duration: 500.ms,
                        decoration: BoxDecoration(color: settings["accent_color"].withOpacity(.6), borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(item["icon"], size: 15, color: selectedPage == item["title"] ? settings["main_dark_color"] : settings["main_dark_color"]),
                            const SizedBox(height: 10),
                            Text(item["title"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: settings["main_dark_color"])),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: PageView.builder(
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int index) => _pages[index]["page"],
          controller: _pagesController,
        ),
      ),
    );
  }
}
