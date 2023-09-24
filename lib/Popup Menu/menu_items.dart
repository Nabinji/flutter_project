import 'package:flutter/material.dart';

class MenuItems {
  static const String settings = 'Setting';
  static const String share = 'Share';
  static const String exit = 'Exit';

  static const List<String> choices = <String>[settings, share, exit];

  // for icons
  static const Map<String, IconData> choiceIcons = <String, IconData>{
    settings: Icons.settings,
    share: Icons.share,
    exit: Icons.exit_to_app,
  };
}
