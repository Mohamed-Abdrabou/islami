import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_c12_dokki/Providers/SettingsProvider.dart';
import 'package:islamy_c12_dokki/home/ThemeBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../LanguageBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider =Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  context: context,builder:(context) => LanguageBottomSheet(),);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimaryContainer
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
              settingsProvider.language =="ar"
                 ?"العربية"
                 :"English",
                 style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context) => ThemeBottomSheet(),);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color:  Theme.of(context).colorScheme.onPrimaryContainer
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(settingsProvider.curantTheme == true
                          ?"Dark"
                          :"Light",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
