import 'package:flutter/material.dart';

class loginButton extends StatelessWidget {
  final void Function()? onTap;
  const loginButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 15),
          child: Text('L O G  I N',style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}