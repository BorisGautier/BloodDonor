// ignore_for_file: avoid_print

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  // Constantes pour les noms des clés de stockage
  static const String _isFirstOpen = "firstOpen";

  // Stocke une valeur booléenne indiquant si l'application a été ouverte pour la première fois
  static Future<bool> setIsFirstOpen(bool first) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool res = await prefs.setBool(_isFirstOpen, first);
    print('First Open $res');
    return res;
  }

  // Récupère une valeur booléenne indiquant si l'application a été ouverte pour la première fois
  static Future<bool> getIsFirstOpen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool res = prefs.getBool(_isFirstOpen) ?? true;
    print('First Open $res');
    return res;
  }
}
