import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/globals.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Bootstrap.grid_3x3, size: 15),
                ),
                const SizedBox(width: 30),
                const Text("Restaurant", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Bootstrap.pin_map, size: 15),
                ),
                const Spacer(),
                const Text("Add address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const Spacer(),
                Tooltip(
                  message: "Delivery",
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesome.truck_pickup_solid, size: 15),
                  ),
                ),
                Tooltip(
                  message: "Pickup",
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesome.pizza_slice_solid, size: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                const Text("Top Stores", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                const Spacer(),
                InkWell(onTap: () {}, child: const Text("View all", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 200,
              width: 250,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/pictures/5.png"), fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(color: green, borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
                        child: const Text("Open", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(color: orange, borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
                        child: const Text("Pick-up", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                      const Spacer(),
                      const Text("Tasty Bites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: <Widget>[
                            const Text("Serving delicious meals", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                              decoration: const BoxDecoration(color: brown, borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
                              child: const Icon(FontAwesome.circle_chevron_right_solid, size: 15),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("✭", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20),
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
