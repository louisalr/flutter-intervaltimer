import 'package:flutter/material.dart';
import 'package:intervaltimer/providers/dark_theme.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = "/settings";

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    final darkModeState = Provider.of<DarkTheme>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Dark mode"),
            value: darkModeState.isDarkMode,
            onChanged: (bool value) {
              darkModeState.setMode();
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}
