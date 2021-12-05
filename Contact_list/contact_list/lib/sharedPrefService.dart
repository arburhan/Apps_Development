import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static String  name = "Name"; 
  static String  contactNumber = "Contact Number"; 

  static getValue(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(key) ?? 0;
  }

  static setValue(String key, int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt(key, value);
  }
}