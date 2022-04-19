import 'package:design_shop_app/widget/product_detail_sizedbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  String? image;
  ProductDetailScreen({Key? key, this.image}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool _isFavorite = false;
  int _id = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: ConstrainedBox(
          constraints: BoxConstraints.tightFor(height: 38),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.black12,
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                filled: true,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                hintText: 'Search Product',
                hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.sms, size: 25, color: Colors.black54),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notification_add,
                    size: 25, color: Colors.black54),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 20,
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan, width: 1.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Add to Shopping Cart",
                    style: TextStyle(
                        color: Colors.cyan, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.network(
                widget.image!,
                fit: BoxFit.fill,
              ),
            ),

            Container(
              color: Colors.white,
             // height: MediaQuery.of(context).size.height * 0.15,
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$32.3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          },
                          icon: _isFavorite
                              ? Icon(Icons.favorite,
                                  color: Colors.red, size: 30)
                              : Icon(Icons.favorite),
                        ),
                      ],
                    ),
                    Text("JBL Smart Stearo 4D Specker For Home-Automation"),
                    Text("Support Android And iOS"),
                   SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Text(
                          "4.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("(45)",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        Text(
                          "|",
                          style: TextStyle(color: Colors.black26, fontSize: 23),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        Text("17 Sale"),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        Text(
                          "|",
                          style: TextStyle(color: Colors.black26, fontSize: 23),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        Icon(Icons.add_location, color: Colors.grey),
                        Text("Brooklyn")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ProductDetailSizeBox(),
          ],
        ),
      ),
    );
  }
}
