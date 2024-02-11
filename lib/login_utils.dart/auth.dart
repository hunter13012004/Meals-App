import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/pages/Getting_started.dart';
import 'package:mealsapp/pages/home_page.dart';

class authPage extends StatefulWidget {
  const authPage({super.key});

  @override
  State<authPage> createState() => _authPageState();
}

class _authPageState extends State<authPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot){
      if(snapshot.hasData){
        return HomePage();

      }else{
        return StartPage();
      }
    }
    
    ,);
  }
}