import 'package:flutter/material.dart';
import 'package:restaurant_management/utils/callbacks.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      title: "Restaurant",
      home: FutureBuilder<bool>(
        future: load(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData) {
            return const Home();
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
