import 'package:flutter/material.dart';
import 'package:mealsapp/components/getstarted_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // logo
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Icon(
                  Icons.food_bank,
                  size: 250,
                ),
              ),
            ),
      Divider(thickness: 2,color: Colors.black,),

      SizedBox(height: 20,),
            // name of the app
      
            Text('M E A L S A P P',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
      
            // subtitle or quote for the app

            Text('#L O V E Y O U R H U N G E R',style: TextStyle(fontSize: 18,color: Colors.grey),),
    
            // get started button
SizedBox(height: 150,),
            StartButton()



          ],
        ),
      ),
    );
  }
}
