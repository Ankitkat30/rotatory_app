import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static Future<void> saveUserDetails(String phone, String password) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    await instance.setString("phone", phone);
    await instance.setString("password", password);
    log("Details saved!");
  }

  static Future<Map<String, dynamic>> fetchUserDetails() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    String? phone = instance.getString("phone");
    String? password = instance.getString("password");
    return {
      "phone": phone,
      "password": password
    };
  }

  static Future<void> clear() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    await instance.clear();
  }

}