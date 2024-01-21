import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/globals.dart';

class StoreProducts extends StatefulWidget {
  const StoreProducts({super.key});

  @override
  State<StoreProducts> createState() => _StoreProductsState();
}

class _StoreProductsState extends State<StoreProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Bootstrap.chevron_left, size: 15),
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
            Icon(Bootstrap.chevron_left, size: 15),
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
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemBuilder: (BuildContext context, int index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
