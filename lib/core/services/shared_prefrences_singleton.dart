import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSingleton {
  static  SharedPreferences? instance;
  final bool isOnBoardingViewScreen=false;

  static Future<void> init() async {
    instance ??= await SharedPreferences.getInstance();
    // instance!.clear();
  }

    static setBool(String key, bool value)  {
     instance?.setBool(key, value);
  }

  static  getBool(String key) {
    return instance?.getBool(key)??false;
  }
}
