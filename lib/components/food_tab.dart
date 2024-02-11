import 'package:flutter/material.dart';
import 'package:mealsapp/components/food_tile.dart';

class Foodtab extends StatelessWidget {
  const Foodtab({super.key});

  @override
  Widget build(BuildContext context) {

final List food = [
  //'name' , 'description' , 'imagepath' , 'price '
  ['sushi', 'Japanese sushi restaurant in the heart of Tokyo.', 'assets/images/sushi.png','12'],
  ['futomaki', 'Japanese sushi restaurant in the heart of Tokyo.', 'assets/images/futomaki.png','20'],
  ['nigiri', 'Japanese sushi restaurant in the heart of Tokyo.', 'assets/images/nigiri.png','16'],
  ['Fish sushi', 'Japanese sushi restaurant in the heart of Tokyo.', 'assets/images/sushi1.png','16']
];


    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        itemCount: food.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FoodTile(
            name: food[index][0],
            description: food[index][1],
            price:food[index][3],
            imagepath: food[index][2],
          );
        });
  }
}
