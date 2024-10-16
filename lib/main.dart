import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_c12_dokki/home/home_screen.dart';
import 'package:islamy_c12_dokki/quran_details/quran_details_screen.dart';
import 'package:islamy_c12_dokki/style/AppStyle.dart';
// untracked (Unversioned) - tracked file - ignored file
// commit
void main() {
  // new version
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppStyle.lightTheme,
      darkTheme:AppStyle.darkTheme ,
      themeMode: AppStyle.isDark
          ?ThemeMode.dark
          :ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethDetails.routeName:(_)=>AhadethDetails()
      },
    );
  }
}
