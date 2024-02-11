import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/login_utils.dart/google_apple.dart';
import 'package:mealsapp/login_utils.dart/login_button.dart';
import 'package:mealsapp/login_utils.dart/login_textfeild.dart';
import 'package:mealsapp/pages/home_page.dart';
import 'package:mealsapp/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controllers for login data

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

Future googlesignin()async {
  await GoogleAuthProvider();
}
  Future loginwithemail() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(), password: _passwordcontroller.text.trim());
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  //create login function with firebase
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    'M E A L S  A P P',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // logo
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.food_bank,
                    size: 100,
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
        
              //email textfeild
        
              LoginTextfeild(controller: _emailcontroller, HintText: 'Email'),
        
              SizedBox(
                height: 20,
              ),
        
              //password textfeild
              LoginTextfeild(
                  controller: _passwordcontroller, HintText: 'Password'),
              SizedBox(
                height: 5,
              ),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('Forgot Password?')],
              ),
        
              //login button
        
              SizedBox(
                height: 20,
              ),
        
              loginButton(
                onTap: loginwithemail,
              ),
        
              SizedBox(
                height: 10,
              ),
        
              //create a account or sign up
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a Customer?'),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>registerPage()));},
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
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
            ],
          ),
        ),
      ),
    );
  }
}
