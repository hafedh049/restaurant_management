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
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: white,
        boxShadow: <BoxShadow>[BoxShadow(color: black.withOpacity(.2), offset: const Offset(7, 7), blurStyle: BlurStyle.outer)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(child: Image.asset("assets/pictures/5.jpg")),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.moon, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Light Mode", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
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
                Text("Settings", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
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
                Text("Languages", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
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
                Text("Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Icon(Bootstrap.git, size: 15, color: brown),
                SizedBox(width: 30),
                Text("Version 1.0.0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
                Spacer(),
                Text("1 April 2023", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: brown)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
