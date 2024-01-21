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
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover)),
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
                          const Text("Steak Dinner", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: brown)),
                          const SizedBox(height: 10),
                          const Text("Tasty Bites", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: brown)),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: orange, borderRadius: BorderRadius.circular(5)),
                            child: const Text("Not Deliverable", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text("25.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: brown)),
                          const SizedBox(height: 40),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: brown, borderRadius: BorderRadius.circular(5)),
                            child: const Text("1 Plate in stock", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(thickness: .6, height: .6, color: grey),
                  const SizedBox(height: 20),
                  const Text("Juicy steak served with mashed potates and vegetables", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: brown)),
                  const SizedBox(height: 20),
                  const Row(
                    children: <Widget>[
                      Icon(Bootstrap.chevron_left, size: 25, color: brown),
                      SizedBox(width: 30),
                      Text("Reviews", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: brown)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("No reviews yet", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: brown)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
