import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/globals.dart';
import 'package:restaurant_management/utils/helpers/product_tile.dart';
import 'package:restaurant_management/views/product.dart';

class StoreProducts extends StatefulWidget {
  const StoreProducts({super.key});

  @override
  State<StoreProducts> createState() => _StoreProductsState();
}

class _StoreProductsState extends State<StoreProducts> {
  final GlobalKey<State> _filterKey = GlobalKey<State>();
  final List<Map<String, dynamic>> _filters = <Map<String, dynamic>>[
    <String, dynamic>{"text": "All", "icon": null},
    <String, dynamic>{"text": "Soups", "icon": "assets/pictures/5.jpg"},
    <String, dynamic>{"text": "Apetizers", "icon": "assets/pictures/5.jpg"},
    <String, dynamic>{"text": "Pizzas", "icon": "assets/pictures/5.jpg"},
  ];
  String _filter = "All";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Bootstrap.chevron_left, size: 15, color: brown),
            ),
            const Spacer(),
            const Text("Tasty Bites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: brown)),
            const Spacer(),
            Badge(
              alignment: Alignment.bottomRight,
              label: const Text("0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Bootstrap.shop, size: 15),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
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
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(FontAwesome.id_badge, size: 15, color: brown),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Featured Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: brown)),
                Text("Click on the product to get more details about it", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: brown)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20),
            itemBuilder: (BuildContext context, int index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(4),
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover), borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: brown),
                      child: const Text("12.99", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: white)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Margherita Pizza\nTasty Bites", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: brown)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Bootstrap.list, size: 15, color: brown),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: brown)),
                Text("Click on the product to get more details about it", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: brown)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) _) {
            return Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.start,
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                for (final Map<String, dynamic> item in _filters)
                  GestureDetector(
                    onTap: () {
                      _(() => _filter = item["text"]);
                      _filterKey.currentState!.setState(() {});
                    },
                    child: AnimatedContainer(
                      duration: 500.ms,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _filter == item["text"] ? brown : brown.withOpacity(.1),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          if (item["icon"] != null) ...<Widget>[
                            Image.asset(item["icon"], width: 20, height: 20, fit: BoxFit.cover),
                            const SizedBox(width: 10),
                          ],
                          Text(item["text"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: _filter != item["text"] ? brown : white)),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        const SizedBox(height: 30),
        Expanded(
          child: StatefulBuilder(
            key: _filterKey,
            builder: (BuildContext context, void Function(void Function()) _) {
              return ListView.separated(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
