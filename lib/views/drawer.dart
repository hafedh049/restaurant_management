import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:restaurant_management/utils/globals.dart';

class Drawery extends StatefulWidget {
  const Drawery({super.key});

  @override
  State<Drawery> createState() => _DraweryState();
}

class _DraweryState extends State<Drawery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(child: Image.asset("assets/pictures/5.png")),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.moon, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Light Mode", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.gear, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.translate, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Languages", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.door_open, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.moon, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Version 1.0.0", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: brown)),
                Spacer(),
                Text("1 April 2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
