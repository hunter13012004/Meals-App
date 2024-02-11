import 'package:flutter/material.dart';

class LoginTextfeild extends StatelessWidget {

  final controller;
  final String HintText;
  const LoginTextfeild({super.key, required this.controller, required this.HintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey)),
      hintText: HintText,
      hintStyle: TextStyle(),
      
      
      
    ),
    );
  }
}