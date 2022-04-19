import 'package:design_shop_app/models/sizebox_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewProductScreen extends StatefulWidget {
  @override
  State<ReviewProductScreen> createState() => _ReviewProductScreenState();
}

class _ReviewProductScreenState extends State<ReviewProductScreen> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Review Product',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://cms-static.asics.com/media-libraries/56365/file.thrb.png?')),
                ),
                Text(
                  'Delta Boots import 8 inch',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 0.5,
            color: Colors.black54,
          ),
          SizedBox(height: 25),
          Text(
            'Give Rating',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Center(
            child: SmoothStarRating(
              rating: rating,
              isReadOnly: false,
              size: 50,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              starCount: 5,
              allowHalfRating: true,
              spacing: 2.0,
            ),
          ),

          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Robert Steven, do you like the product ? Give your',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('review below :',
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Review',
                  labelStyle: TextStyle(color: Colors.black54),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  )),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 40,
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                ShowAlertDialog(context);
              },
              child: Text(
                'Save',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}

ShowAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Text('Add Review Success'),
    actions: [
      SizedBox(

        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ),
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
