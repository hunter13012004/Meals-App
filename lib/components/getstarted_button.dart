import 'package:flutter/material.dart';
import 'package:mealsapp/pages/home_page.dart';
import 'package:mealsapp/pages/login_page.dart';

class StartButton extends StatefulWidget {

   StartButton({super.key, });

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.background,
          boxShadow: [BoxShadow(
            blurRadius: 5,
            color: Colors.grey.shade700,
            offset:Offset(5, 5)
          ),
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey.shade400,
            offset:Offset(-3, -3))]
        ),
        duration: Duration(seconds: 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text('G E T S T A R T E D',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(width: 20,),
              Icon(Icons.subdirectory_arrow_right_outlined,size: 30,)
             
              
            ],
          ),
        ),
      ),
    );
  }
}