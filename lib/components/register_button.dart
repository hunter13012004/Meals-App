import 'package:flutter/material.dart';

class registerbutton extends StatelessWidget {
 final void Function()? onTap;
  const registerbutton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 20),
          child: Column(
            children: [
              Text('R E G I S T E R  N O W',style: TextStyle(fontSize: 18),),
              
            ],
          ),
          
        ),
      ),
    );
  }
}