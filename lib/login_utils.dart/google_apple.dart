import 'package:flutter/material.dart';

class googleLogo extends StatelessWidget {
  final child;
  const googleLogo({super.key,  required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(12)),
      
      child: child,
    );
  }
}