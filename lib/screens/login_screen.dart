import 'package:design_shop_app/home_page..dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Center(child: Text("iJShop", style: TextStyle(fontSize: 30,color: Colors.green),)),
         ],
       ),
    );
  }
}
