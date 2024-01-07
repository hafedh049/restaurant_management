import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Resize extends StatelessWidget {
  const Resize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              LottieBuilder.asset("assets/lotties/resize.json"),
              const SizedBox(height: 20),
              const Text("Please"),
            ],
          ),
        ),
      ),
    );
  }
}
