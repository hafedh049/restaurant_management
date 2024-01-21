import 'dart:math';

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/globals.dart';

class AllStores extends StatefulWidget {
  const AllStores({super.key, required this.title});
  final String title;
  @override
  State<AllStores> createState() => _AllStoresState();
}

class _AllStoresState extends State<AllStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Bootstrap.chevron_left, size: 15, color: brown),
        ),
        title: Text(widget.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: brown)),
        actions: <Widget>[
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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) => Container(
            height: 300,
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(color: green, borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                  child: const Text("Open", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(color: orange, borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                  child: const Text("Pick-up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("Tasty Bites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          const Text("Serving delicious meals", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: white)),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                            decoration: BoxDecoration(color: brown, borderRadius: BorderRadius.circular(5)),
                            child: const Icon(FontAwesome.circle_chevron_right_solid, size: 15),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text("✭" * (Random().nextInt(5) + 1), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: yellow)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
          itemCount: 20,
        ),
      ),
    );
  }
}
