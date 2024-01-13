import 'package:flutter/material.dart';
import 'package:restaurant_management/utils/callbacks.dart';
import 'package:restaurant_management/utils/globals.dart';
import 'package:restaurant_management/views/home.dart';
import 'package:restaurant_management/views/loading.dart';
import 'package:restaurant_management/views/error.dart';
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
    return FutureBuilder<bool>(
      future: load(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        return snapshot.hasData
            ? MaterialApp(debugShowCheckedModeBanner: false, title: settings["app_name"], home: const Home())
            : snapshot.connectionState == ConnectionState.waiting
                ? const MaterialApp(debugShowCheckedModeBanner: false, title: "Restaurant", home: Loading())
                : MaterialApp(debugShowCheckedModeBanner: false, title: "Restaurant", home: Error(error: snapshot.error.toString()));
      },
    );
  }
}
