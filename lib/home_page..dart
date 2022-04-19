import 'package:design_shop_app/screens/account_screen.dart';
import 'package:design_shop_app/screens/cart_screen.dart';
import 'package:design_shop_app/screens/favorite_screen.dart';
import 'package:design_shop_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int screenIndex = 0;
  final screens = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:[ BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
            ),],
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  screenIndex = 0;
                });
              },
              icon: screenIndex == 0
                  ? Icon(
                      Icons.home,
                      size: 33,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.home,
                      size: 33,
                      color: Colors.black54,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  screenIndex = 1;
                });
              },
              icon: screenIndex == 1
                  ? Icon(
                      Icons.favorite,
                      size: 33,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite,
                      size: 33,
                      color: Colors.black54,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  screenIndex = 2;
                });
              },
              icon: screenIndex == 2
                  ? Icon(
                      Icons.shopping_cart,
                      size: 33,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.shopping_cart,
                      size: 33,
                      color: Colors.black54,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  screenIndex = 3;
                });
              },
              icon: screenIndex == 3
                  ? Icon(
                      Icons.account_circle,
                      size: 33,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.account_circle,
                      size: 33,
                      color: Colors.black54,
                    ),
            ),
          ],
        ),
      ),
    );
  }

}
