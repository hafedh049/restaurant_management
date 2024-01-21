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
          children: <Widget>[
            Icon(Bootstrap.chevron_left, size: 15),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Featured Products", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: brown)),
                Text("Tasty Bites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: brown)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
