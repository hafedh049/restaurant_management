import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

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
          ],
        ),
      ),
    );
  }
}
