import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';

Future<bool> load() async {
  try {
    Hive.init(null);
    await Firebase.initializeApp();
    return true;
  } catch (e) {
    return false;
  }
}
