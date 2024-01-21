import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/globals.dart';
import 'package:restaurant_management/views/category.dart';
import 'package:restaurant_management/views/drawer.dart';
import 'package:restaurant_management/views/empty_cart.dart';
import 'package:restaurant_management/views/home.dart';
import 'package:restaurant_management/views/must_sign_in.dart';
import 'package:restaurant_management/views/orders_login.dart';

class Holder extends StatefulWidget {
  const Holder({super.key});

  @override
  State<Holder> createState() => _HolderState();
}

class _HolderState extends State<Holder> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> _pages = <Map<String, dynamic>>[
    <String, dynamic>{"title": "Notifications", "icon": Bootstrap.bell, "page": const MustSignIn()},
    <String, dynamic>{"title": "Category", "icon": Bootstrap.circle, "page": const Category()},
    <String, dynamic>{"title": "Home", "icon": Bootstrap.house, "page": const Home()},
    <String, dynamic>{"title": "Orders", "icon": Bootstrap.list_task, "page": const OrdersLogin()},
    <String, dynamic>{"title": "Cart", "icon": Bootstrap.cart, "page": const EmptyCart()},
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
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Bootstrap.grid_3x3, size: 15),
        ),
        title: const Text("Restaurant", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
        centerTitle: true,
      ),
      drawer: const Drawery(),
      bottomNavigationBar: StatefulBuilder(
        builder: (BuildContext context, void Function(void Function()) _) {
          return Container(
            decoration: BoxDecoration(color: white, boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.2), offset: const Offset(7, 7), blurStyle: BlurStyle.outer)]),
            padding: const EdgeInsets.all(8),
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
