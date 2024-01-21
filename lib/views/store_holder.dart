import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/views/store.dart';
import 'package:restaurant_management/views/store_products.dart';

import '../utils/globals.dart';

class StoreHolder extends StatefulWidget {
  const StoreHolder({super.key});

  @override
  State<StoreHolder> createState() => _StoreHolderState();
}

class _StoreHolderState extends State<StoreHolder> {
  final List<Map<String, dynamic>> _pages = <Map<String, dynamic>>[
    <String, dynamic>{"title": "Store", "icon": Bootstrap.shop, "page": const Store()},
    <String, dynamic>{"title": "Store Products", "icon": Bootstrap.bag, "page": const StoreProducts()},
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
            decoration: BoxDecoration(boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.2), offset: const Offset(7, 7), blurStyle: BlurStyle.outer)]),
            padding: const EdgeInsets.all(8),
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                for (final Map<String, dynamic> item in _pages)
                  InkWell(
                    onTap: () {
                      _(() => selectedPage = item["title"]);
                      _pagesController.jumpToPage(_pages.indexOf(item));
                    },
                    child: Container(
                      decoration: BoxDecoration(color: brown, borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(item["icon"], size: 15, color: brown),
                          const SizedBox(width: 10),
                          Text(item["title"], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: brown)),
                        ],
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
        ),
      ),
    );
  }
}
