import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Error extends StatelessWidget {
  const Error({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: LottieBuilder.asset("assets/lotties/error.json")),
            const SizedBox(height: 20),
            Text(error),
          ],
        ),
      ),
    );
  }
}
