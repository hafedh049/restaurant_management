import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:restaurant_management/utils/globals.dart';

Future<bool> load() async {
  try {
    Hive.init(null);
    user = await Hive.openBox<dynamic>("user");
    if (user.get("device") == null) {
      await user.put("device", "web");
    }
    await Firebase.initializeApp();
    return true;
  } catch (e) {
    return false;
  }
}
