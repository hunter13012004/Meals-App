import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final void Function()? onTap;
  const Mybutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800
        ),
        child: Text("dark Mode"),
      ),
    );
  }
}