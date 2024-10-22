import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/SettingsProvider.dart';
import 'SelectedItem.dart';
import 'UnselectedItem.dart';
class ThemeBottomSheet extends StatelessWidget {
  bool theme =true;

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(settingsProvider.curantTheme==true
          ? "Dark"
          :"Light"
      ),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                settingsProvider.changeTheme(settingsProvider.curantTheme ==true ?false :true
                );
              },
               child: UnSelectedItem(settingsProvider.curantTheme == true
              ?"Light"
              :"Dark")),
        ],
      ),
    );
  }
}
