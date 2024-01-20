import 'package:flutter/material.dart';

import '../utils/globals.dart';

class MustSignIn extends StatefulWidget {
  const MustSignIn({super.key});

  @override
  State<MustSignIn> createState() => _MustSignInState();
}

class _MustSignInState extends State<MustSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
                          Theme.of(context).focusColor.withOpacity(0.7),
                          Theme.of(context).focusColor.withOpacity(0.05),
                        ])),
                    child: Icon(Icons.https, color: Theme.of(context).scaffoldBackgroundColor, size: 70),
                  ),
                  Positioned(
                    right: -30,
                    bottom: -50,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -20,
                    top: -50,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Flexible(child: Text("You must sign-in to access this sections", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: settings["main_color"]))),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(color: brown, borderRadius: BorderRadius.circular(15)),
                  child: const Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Text("I don't have an account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: settings["main_color"])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
