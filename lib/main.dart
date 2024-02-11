import 'dart:io' show Platform ;

import 'package:flutter/material.dart';
import 'package:mealsapp/login_utils.dart/auth.dart';
import 'package:mealsapp/pages/Getting_started.dart';
import 'package:mealsapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid?
       await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyA1w9b-rMAUjF4x8GSpMX1PvlVgLQ3F9Ms",
              appId: "1:232251757235:android:357c9203707793065196c6",
              messagingSenderId: '232251757235',
              projectId: 'mealsapp-cf91c'))
      : await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => themeprovider())],
      child: Myapp(),
    ),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: authPage(),
      theme: Provider.of<themeprovider>(context).themeData,
    );
  }
}
