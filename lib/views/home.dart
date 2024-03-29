import 'dart:math';

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/callbacks.dart';
import 'package:restaurant_management/views/all_stores.dart';
import 'package:restaurant_management/views/product_category.dart';
import 'package:restaurant_management/views/store_category.dart';
import 'package:restaurant_management/views/store_holder.dart';

import '../utils/globals.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Bootstrap.pin_map, size: 25, color: brown),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Text("Add address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
              ),
              const Spacer(),
              Tooltip(
                message: "Delivery",
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/pictures/delivery.png", height: 25, width: 25, color: brown),
                ),
              ),
              Tooltip(
                message: "Pickup",
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/pictures/pickup.png", height: 40, width: 40, color: brown),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: <Widget>[
              const Icon(FontAwesome.shapes_solid, size: 15),
              const SizedBox(width: 30),
              const Text("Top Stores", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const AllStores(title: "Top stores")));
                  },
                  child: const Text("View all", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const StoreHolder()));
                },
                child: Container(
                  width: 300,
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
              ),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20),
              itemCount: 20,
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            children: <Widget>[
              Icon(FontAwesome.shapes_solid, size: 15),
              SizedBox(width: 30),
              Text("Product Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ProductCategory()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover)),
                    ),
                    const SizedBox(height: 10),
                    const Text("Appetizers", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: black)),
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20),
              itemCount: 20,
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            children: <Widget>[
              Icon(FontAwesome.shapes_solid, size: 15),
              SizedBox(width: 30),
              Text("Store Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const StoreCategory()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), image: const DecorationImage(image: AssetImage("assets/pictures/5.jpg"), fit: BoxFit.cover)),
                    ),
                    const SizedBox(height: 10),
                    const Text("Food", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: black)),
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20),
              itemCount: 20,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: <Widget>[
              const Icon(FontAwesome.shapes_solid, size: 15),
              const SizedBox(width: 30),
              const Text("Most Popular", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const AllStores(title: "Most popular")));
                  },
                  child: const Text("View all", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 300,
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
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const StoreHolder()));
                            },
                            child: Container(
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
        ],
      ),
    );
  }
}
