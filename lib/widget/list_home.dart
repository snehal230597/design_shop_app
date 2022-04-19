import 'package:design_shop_app/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ListHomeScreen extends StatelessWidget {
  List<String> listImage = [
    "https://img.freepik.com/free-photo/funny-young-man-with-afro-hair-looks-amazingly-through-rolls-toilet-paper-simulating-binoculars-isolated-blue-background-vertical-picture_109656-1196.jpg"
        "https://specials-images.forbesimg.com/imageserve/61489eb6dc93f8d10c01442c/Modern-Case-Rustic-Brown-iPhone-13-Series/960x0.jpg"
        "https://wallpaperaccess.com/full/5563820.jpg"
  ];
  List<String> listText = [
    "Smart cameras",
    "Binoqulars",
    "Smart Covers",
    "Bluetooth Specker"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 270,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailScreen(
                    image:
                        "https://www.ubuy.co.in/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNzFrZFZSTUUzWkwuX0FDX1NMMTUwMF8uanBn.jpg",
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: (index == 4) ? 10 : 0),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: Image.network(
                          "https://www.ubuy.co.in/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNzFrZFZSTUUzWkwuX0FDX1NMMTUwMF8uanBn.jpg",
                          alignment: Alignment.topCenter),
                    ),
                  ),
               //   Divider(),
               //   SizedBox(height: MediaQuery.of(context).size.height * 0.0008),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        "Sale 50% off",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
               //   Divider(),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'JBL',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Bluetooth specker'),
                        Text(
                          "Price : 199\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
