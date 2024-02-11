import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final String name;
  final String description;
  final String imagepath;
  final String price;
  const FoodTile(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.imagepath})
      : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.grey),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: Text('\$' + price),
                    )),
              ],
            ),
            
            Image.asset(
              imagepath,
              height: 100,
            ),
            SizedBox(height: 5,),
            Text(
              name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Text(
                description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 16),
              ),
            ),SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add,size: 25,color: Colors.white,),
                  Icon(Icons.favorite_border_outlined,size: 25,color: Colors.white,)
                  
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
