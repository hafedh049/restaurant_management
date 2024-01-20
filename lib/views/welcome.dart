import 'package:flutter/material.dart';
import 'package:restaurant_management/views/holder.dart';

import '../utils/globals.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  void _enablePermission() async {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Holder()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Welcome", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: settings["main_color"])),
              const SizedBox(height: 30),
              Flexible(
                child: Text(
                  "We request you to grant us location permission for better user experience. This way we can filter out nearby deliverable stores for you.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: settings["main_color"]),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Holder()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(color: brown, borderRadius: BorderRadius.circular(15)),
                  child: const Text("OK", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
