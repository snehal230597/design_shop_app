import 'package:flutter/material.dart';
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Created By :'),
            SizedBox(height: 10),
            Text(
              'MR_SNEHAL',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'iJShop',
              style: TextStyle(fontSize: 50, color: Colors.green),
            ),
            SizedBox(height: 10),
            Text('App Version'),
            Text('10.0.8'),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipOval(
                  child: Image.asset(
                    "assets/image/sn.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 120,
                width: 200,
                child: Image.network("https://www.kindpng.com/picc/m/45-451679_thank-you-in-cursive-writing-hd-png-download.png"),),
          ],
        ),
      ),
    );
  }
}
