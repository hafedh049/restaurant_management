import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    configurations = json.decode(await rootBundle.loadString("assets/configurations/configuration.json"));
    //Load Colors
    Request request = Request("GET", Uri.parse("https://talabatplus.net/api/settings?business_id=${'business_id'}"));
    settings = json.decode(request.body);
    debugPrint(settings.toString());
    await Firebase.initializeApp();
    return true;
  } catch (e) {
    debugPrint(e.toString());
    return false;
  }
}
