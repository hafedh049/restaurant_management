import 'package:flutter/material.dart';
import 'package:restaurant_management/utils/globals.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(color: blue));
  }
}
