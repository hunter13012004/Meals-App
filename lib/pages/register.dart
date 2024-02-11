import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/components/register_button.dart';
import 'package:mealsapp/login_utils.dart/google_apple.dart';
import 'package:mealsapp/login_utils.dart/login_textfeild.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  final _newEmailcontroller = TextEditingController();
  final _newpasswordcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();

  Future signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _newEmailcontroller.text, password: _newpasswordcontroller.text);
  }

@override
  void dispose() {
    _newpasswordcontroller.dispose();
    _newEmailcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Icon(
            Icons.food_bank,
            size: 200,
          ),
        ),
      ),
      Text(
        'Not a Customer Register Now',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      LoginTextfeild(
          controller: _newEmailcontroller, HintText: 'Enter your Email'),
      SizedBox(
        height: 7,
      ),
      LoginTextfeild(controller: _newpasswordcontroller, HintText: 'password'),
      SizedBox(
        height: 7,
      ),
      LoginTextfeild(
          controller: _confirmpasswordcontroller, HintText: 'confirm Password'),
      SizedBox(
        height: 20,
      ),
      registerbutton(
        onTap: signup,
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.black,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("O R"),
          ),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.black,
          ))
        ],
      ),

      //or continue with google or facebook
      SizedBox(
        height: 40,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            googleLogo(
              child: Image.asset(
                'assets/images/icons/google.png',
                height: 100,
              ),
            ),
            googleLogo(
                child: Image.asset(
              'assets/images/icons/facebook.png',
              height: 90,
            ))
          ],
        ),
      )
    ]));
  }
}
