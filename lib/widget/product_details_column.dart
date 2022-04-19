import 'package:flutter/material.dart';

class ProductDetailsColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "11 September 2020",
          style: TextStyle(fontSize: 15, color: Colors.black26),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "A*******i",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 15),
                Icon(Icons.star, color: Colors.orange, size: 15),
                Icon(Icons.star, color: Colors.orange, size: 15),
                Icon(Icons.star, color: Colors.orange, size: 15),
                Icon(Icons.star, color: Colors.orange, size: 15),
              ],
            ),
          ],
        ),
        SizedBox(height: 5),
        Text("Everythig come in time. Very well packed. Quality is"),
        Text("excellent. Thank you!"),
        Divider(color: Colors.black38),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "11 September 2020",
              style: TextStyle(fontSize: 15, color: Colors.black26),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "A*******i",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Text("Everythig come in time. Very well packed. Quality is"),
            Text("excellent. Thank you!"),
            Divider(color: Colors.black38),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "11 September 2020",
              style: TextStyle(fontSize: 15, color: Colors.black26),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "A*******i",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Text("Everythig come in time. Very well packed. Quality is"),
            Text("excellent. Thank you!"),
            Divider(color: Colors.black38),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "11 September 2020",
              style: TextStyle(fontSize: 15, color: Colors.black26),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "A*******i",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Text("Everythig come in time. Very well packed. Quality is"),
            Text("excellent. Thank you!"),
            Divider(color: Colors.black38),
          ],
        ),
      ],
    );
  }
}
