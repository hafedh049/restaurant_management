import 'package:hive/hive.dart';

Future<bool> load() async {
  try {
    Hive.init();
    return true;
  } catch (e) {
    return false;
  }
}
