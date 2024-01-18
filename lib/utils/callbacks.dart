import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:restaurant_management/utils/globals.dart';

Color hexToColor(String hexColor) {
  final List<String> color = hexColor.replaceAll("#", "").split("");
  final int red = int.parse(color.sublist(0, 2).join(), radix: 16);
  final int blue = int.parse(color.sublist(2, 4).join(), radix: 16);
  final int green = int.parse(color.sublist(4).join(), radix: 16);
  return Color.fromARGB(255, red, green, blue);
}

Future<bool> load() async {
  try {
    Hive.init(null);
    user = await Hive.openBox<dynamic>("user");
    if (user.get("device") == null) {
      await user.put("device", "web");
    }
    //Load Configurations
    configurations = json.decode(await rootBundle.loadString("assets/configurations/configuration.json"));
    //Load Colors
    Response request = await get(Uri.parse("https://talabatplus.net/api/settings?business_id=${configurations['business_id']}"));
    settings = json.decode(request.body)["data"];
    for (final MapEntry<String, dynamic> entry in settings.entries) {
      if (entry.key.contains("color")) {
        settings[entry.key] = hexToColor(entry.value);
      }
    }
    print(settings);
    //Initialize Firebase
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBoQiXy0lpCw8G_3hN88oeJsE3zumuzjtw",
        authDomain: "restaurant-management-8533a.firebaseapp.com",
        projectId: "restaurant-management-8533a",
        storageBucket: "restaurant-management-8533a.appspot.com",
        messagingSenderId: "807496100298",
        appId: "1:807496100298:web:a779dda1ff79742a7c0733",
        measurementId: "G-Z3XHT7EVQ1",
      ),
    );
    return true;
  } catch (e) {
    debugPrint(e.toString());
    return false;
  }
}
