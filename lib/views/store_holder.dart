import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/views/store.dart';

import '../utils/globals.dart';
import 'must_sign_in.dart';

class StoreHolder extends StatefulWidget {
  const StoreHolder({super.key});

  @override
  State<StoreHolder> createState() => _StoreHolderState();
}

class _StoreHolderState extends State<StoreHolder> {
  final List<Map<String, dynamic>> _pages = <Map<String, dynamic>>[
    <String, dynamic>{"title": "Notifications", "icon": Bootstrap.bell, "page": const Store()},
    <String, dynamic>{"title": "Category", "icon": Bootstrap.circle, "page": const Category()},
  ];

  final PageController _pagesController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StatefulBuilder(
        builder: (BuildContext context, void Function(void Function()) _) {
          return Container(
            decoration: BoxDecoration(boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.2), offset: const Offset(7, 7), blurStyle: BlurStyle.outer)]),
            padding: const EdgeInsets.all(8),
            color: white,
            child: Row(
              children: <Widget>[
                for (final Map<String, dynamic> item in _pages)
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _(() => selectedPage = item["title"]);
                        _pagesController.jumpToPage(_pages.indexOf(item));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(item["icon"], size: 15, color: brown),
                            const SizedBox(height: 10),
                            Text(item["title"], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: brown)),
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
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) => _pages[index],
      ),
    );
  }
}
