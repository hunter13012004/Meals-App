import 'package:flutter/material.dart';
import 'package:mealsapp/components/checkout_Button.dart';
import 'package:mealsapp/components/getstarted_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Center(child: checkoutButton())
          
        ]),
      ),
    );
  }
}