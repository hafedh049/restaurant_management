import 'dart:math';

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/views/orders_login.dart';
import 'package:restaurant_management/views/product.dart';

import '../utils/callbacks.dart';
import '../utils/globals.dart';
import '../utils/helpers/product_tile.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  final GlobalKey<State> _filterKey = GlobalKey<State>();
  bool _shape = false;
  void _openSearch() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              readOnly: true,
              style: const TextStyle(color: brown),
              decoration: InputDecoration(
                prefixIcon: const Icon(Bootstrap.search, size: 15, color: brown),
                contentPadding: const EdgeInsets.all(8),
                hintStyle: const TextStyle(color: brown, fontSize: 16, fontWeight: FontWeight.w300),
                hintText: "Search for stores or products",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(width: 1, color: brown),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (_shape) {
                      _filterKey.currentState!.setState(() => _shape = false);
                    }
                  },
                  icon: const Icon(Bootstrap.list_ul, size: 15, color: brown),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (!_shape) {
                      _filterKey.currentState!.setState(() => _shape = true);
                    }
                  },
                  icon: const Icon(Bootstrap.grid_3x3_gap_fill, size: 15, color: brown),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Bootstrap.chevron_left, size: 25, color: brown),
        ),
        title: const Text("Salades", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        actions: <Widget>[
          IconButton(
            onPressed: _openSearch,
            icon: const Icon(Bootstrap.filter, size: 25, color: brown),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: StatefulBuilder(
          key: _filterKey,
          builder: (BuildContext context, void Function(void Function()) _) {
            final List<List<int>> pieces = spread(20);
            return !_shape
                ? ListView.separated(
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                    itemBuilder: (BuildContext context, int index) => ProductTile(
                      data: <String, dynamic>{
                        "picture": "assets/pictures/5.jpg",
                        "title": "Tasty Bites",
                        "rating": "✭" * (Random().nextInt(5) + 1),
                        "price": "${Random().nextInt(90) + 10}.00",
                      },
                      callback: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Product(data: <String, dynamic>{})));
                      },
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: <Widget>[
                        for (final int _ in pieces[index]) ...<Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Product(data: <String, dynamic>{})));
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 300,
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover)),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const OrdersLogin()));
                                      },
                                      splashColor: transparent,
                                      hoverColor: transparent,
                                      highlightColor: transparent,
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(shape: BoxShape.circle, color: brown),
                                        child: const Icon(Bootstrap.cart, size: 20, color: white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text("Humburger", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: brown)),
                                  const SizedBox(height: 10),
                                  const Text("Asian Fusion", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: brown)),
                                ],
                              ),
                            ),
                          ),
                          if (_ != pieces[index].last) const SizedBox(width: 10)
                        ],
                      ],
                    ),
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                    itemCount: pieces.length,
                  );
          },
        ),
      ),
    );
  }
}
