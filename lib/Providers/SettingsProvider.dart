import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{
  bool curantTheme =true;
  ThemeMode get theme{
   if(curantTheme == true){
     return ThemeMode.dark;
   }else{
     return ThemeMode.light;
   }
  }
  changeTheme(bool init)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("theme", init);
    curantTheme = init;
    notifyListeners();
  }
  themeinit()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    curantTheme =  prefs.getBool("theme")??true;
    notifyListeners();
  }
  String language = "ar";
  changeLanguage(String newLanguage)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("language", newLanguage);
    language = newLanguage;
    notifyListeners();
  }
  getLanguage()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    language=prefs.getString("language")??"ar";
    notifyListeners();
  }
}