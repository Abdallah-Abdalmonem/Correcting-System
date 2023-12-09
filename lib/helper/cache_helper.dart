import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? prefs;

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future setBool({required String key, required bool value}) async {
    await CacheHelper.prefs?.setBool(key, value);
  }

  static bool? getBool({required String key}) {
    return CacheHelper.prefs?.getBool(key);
  }

  // static Future setProfileImageTemp() async {
  //   await CacheHelper.prefs
  //       ?.setString('image_profile_temp', AppImage.icon.toString());
  // }

  // static String? getProfileImageTemp() {
  //   return CacheHelper.prefs?.getString('image_profile_temp');
  // }
}
