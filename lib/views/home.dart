import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String,dynamic>> _pages = <Map<String,dynamic>>[
    <String,dynamic>{"title": "Home", "icon": Bootstrap.house,"page": Container()},
      <String,dynamic>{"title": "Home", "icon": Bootstrap.house,"page": Container()},
        <String,dynamic>{"title": "Home", "icon": Bootstrap.house,"page": Container()},
          <String,dynamic>{"title": "Home", "icon": Bootstrap.house,"page": Container()},
            <String,dynamic>{"title": "Home", "icon": Bootstrap.house,"page": Container()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemCount:_pages.length ,
        itemBuilder: (BuildContext context, int index) => ,
      ),
    );
  }
}
