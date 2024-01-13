import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:restaurant_management/utils/globals.dart';

Color hexToColor(String hexColor) {
  // Remove the '#' character if present
  hexColor = hexColor.replaceAll("#", "");

  // Parse the hex color string to get individual color components
  final int hexValue = int.parse(hexColor, radix: 16);
  // Extract the alpha, red, green, and blue components
  final int alpha = (hexValue >> 24) & 0xFF;
  final int red = (hexValue >> 16) & 0xFF;
  final int green = (hexValue >> 8) & 0xFF;
  final int blue = hexValue & 0xFF;

  // Create and return the Color object
  return Color.fromARGB(alpha, red, green, blue);
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
    settings = json.decode(request.body);
    debugPrint(settings["accent_color"]);
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
