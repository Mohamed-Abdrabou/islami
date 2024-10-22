import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/Providers/SettingsProvider.dart';
import 'package:islamy_c12_dokki/home/SelectedItem.dart';
import 'package:islamy_c12_dokki/home/UnselectedItem.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(
              settingsProvider.language == "ar" ? "العربية" : "English"),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage(
                    settingsProvider.language == "ar" ? "en" : "ar");
              },
              child: UnSelectedItem(
                  settingsProvider.language == "ar" ? "English" : "العربية"))
        ],
      ),
    );
  }
}
