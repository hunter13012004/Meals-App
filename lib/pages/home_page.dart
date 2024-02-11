import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealsapp/components/coupon.dart';
import 'package:mealsapp/components/food_tab.dart';
import 'package:mealsapp/components/search_bar.dart';
import 'package:mealsapp/pages/cart_page.dart';
import 'package:mealsapp/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage()));
        },child: Icon(Icons.shopping_cart_checkout),),
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'M E A L S A P P',
              style: GoogleFonts.lato(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // logo
                Column(
                  children: [
                    const Center(
                        child: Icon(
                      Icons.food_bank,
                      size: 100,
                    )),
    
                    const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
    
                    // Home Tile
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('H O M E'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                     ListTile(
                      leading: Icon(Icons.shopping_basket),
                      title: Text('C A R T'),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage()));
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text('A B O U T'),
                    ),
                  ],
                ),
    
                /// setting  tile
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('S E T T I N G'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            // search bar
            mySearchBar(),
            SizedBox(
              height: 20,
            ),
            //subtitle quote
            Text('C r a v i n g  f o r  s o m e t h i n g  h e a l t y'),
    SizedBox(
              height: 20,
            ),
            mycoupon(),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('S U S H I',style: TextStyle(fontSize: 20),),
                 
                ],
              ),
            ),
            // food tiles 
               Expanded(
                 child: TabBarView(children: [
                  Foodtab(),
                  
                  
                             ]),
               ),

               Container(
                decoration: BoxDecoration(


                ),

                /// bottom navigation app bar
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('SUSHI COUNTER'),
                ),
               )
            
          ],
        ),
      ),
    );
  }
}
