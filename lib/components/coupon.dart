import 'package:flutter/material.dart';

class mycoupon extends StatelessWidget {
  const mycoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(color: Colors.red.shade900,
        borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/sushi1.png',height: 100,),
                Column(
                  children: [
                    Text(' G E T 20 % O F F',style: TextStyle(fontSize: 
                    20),),
                    SizedBox(height: 5,),
                     Text('Get 20% off on your first order')
                  ],
                ),
                
              ],
            ),
          ),
        ),
    
      ),
    );

  }
}