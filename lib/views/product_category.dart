import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/views/orders_login.dart';
import 'package:restaurant_management/views/product.dart';

import '../utils/callbacks.dart';
import '../utils/globals.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  void _openSearch() {
    showModalBottomSheet(context: context, builder: (BuildContext context ) => ,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Bootstrap.chevron_left, size: 15, color: brown),
        ),
        title: const Text("Add address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: _openSearch,
            icon: const Icon(Bootstrap.list_columns_reverse, size: 15, color: brown),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) _) {
            final List<List<int>> pieces = spread(20);
            return ListView.separated(
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
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: brown)),
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
