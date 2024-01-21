import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/globals.dart';

class Product extends StatefulWidget {
  const Product({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.sizeOf(context).height * .3,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.data["picture"]), fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.all(24),
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Bootstrap.chevron_left, size: 25, color: brown),
                ),
                const Spacer(),
                Badge(
                  alignment: Alignment.bottomRight,
                  label: const Text("0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Bootstrap.shop, size: 25),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text("0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 10),
                          const Text("0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 20),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
