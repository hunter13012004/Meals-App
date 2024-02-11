import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
     primary:Colors.grey.shade300, 
     secondary: Colors.grey.shade200,
     background:  Colors.grey.shade400,
     inversePrimary: Colors.grey.shade600
  ), 
);

ThemeData DarkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
     primary:Colors.grey.shade700, 
     secondary: Colors.grey.shade600,
     background:  Colors.grey.shade800,
     inversePrimary: Colors.grey.shade300
  ), 
);