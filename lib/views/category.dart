import 'package:flutter/material.dart';

import '../utils/globals.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10),
        const Divider(thickness: .5, height: .5, color: grey),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) => Container(
              height: 150,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), image: const DecorationImage(image: AssetImage("assets/pictures/5.png"))),
              child: Center(child: Text("SOUPS".toUpperCase(), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: white))),
            ),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
