import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restaurant_management/views/product.dart';

import '../utils/callbacks.dart';
import '../utils/globals.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StatefulBuilder(
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
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Spacer(),
                                const Text("Tasty Bites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
                                const SizedBox(height: 10),
                                Text("✭" * (Random().nextInt(5) + 1), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: yellow)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("Humburger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
                          const SizedBox(height: 10),
                          Text("✭" * (Random().nextInt(5) + 1), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: yellow)),
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
    );
  }
}
