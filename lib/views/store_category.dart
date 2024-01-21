import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/globals.dart';

class StoreCategory extends StatefulWidget {
  const StoreCategory({super.key});

  @override
  State<StoreCategory> createState() => _StoreCategoryState();
}

class _StoreCategoryState extends State<StoreCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Bootstrap.chevron_left, size: 25, color: brown),
        ),
        title: const Text("Store", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: CircularProgressIndicator(color: blue)),
          ],
        ),
      ),
    );
  }
}
