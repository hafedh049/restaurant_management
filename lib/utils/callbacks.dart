import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:restaurant_management/utils/globals.dart';

Future<bool> load() async {
  try {
    Hive.init(null);
    user = await Hive.openBox<dynamic>("user");
    if (user.get("device") == null) {
      await user.put("device", "web");
    }
    //Load Configurations

    //Load Colors
    Request request = Request("GET", Uri.parse("https://talabatplus.net/api/settings?business_id=25"));
    await Firebase.initializeApp();
    return true;
  } catch (e) {
    debugPrint(e.toString());
    return false;
  }
}
