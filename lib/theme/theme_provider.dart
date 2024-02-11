import 'package:flutter/material.dart';
import 'package:mealsapp/theme/theme.dart';

// class themeprovider extends ChangeNotifier{
//   ThemeData _themeData = LightMode;

//   ThemeData get themedata => _themeData;

//   set themeData(ThemeData themeData){
//     _themeData = themedata;
//     notifyListeners();

// void toggletheme(){
//   if(themeData == LightMode){
//     themeData = DarkMode;
    
//   }else{
//     themeData = LightMode;
//   }
// }
   
//     }
//   }
 


 class themeprovider extends ChangeNotifier{
 ThemeData _themeData = LightMode;

 ThemeData get themeData => _themeData;

 set themedata(ThemeData themeData){
  _themeData = themeData;
  notifyListeners();
 }

 void toggletheme(){
  if(themeData == LightMode){
    themedata = DarkMode;

  }
  else{
    themedata = LightMode;
  }
 }
}
