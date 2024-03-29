import 'package:flutter/material.dart';
import 'package:restaurant_management/utils/callbacks.dart';
import 'package:restaurant_management/utils/globals.dart';
import 'package:restaurant_management/views/loading.dart';
import 'package:restaurant_management/views/error.dart';
import 'package:restaurant_management/views/welcome.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  ErrorWidget.builder = (FlutterErrorDetails details) => Error(error: details.exception.toString());
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => settings["app_name"] ?? "Talabat Plus",
      home: FutureBuilder<bool>(
        future: load(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData) {
            return const Welcome();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loading();
          } else {
            return Error(error: snapshot.error.toString());
          }
        },
      ),
    );
  }
}
