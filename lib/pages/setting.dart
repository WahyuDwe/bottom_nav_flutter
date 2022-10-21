import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
    );
  }
}
