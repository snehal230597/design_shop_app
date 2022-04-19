import 'package:design_shop_app/screens/scratch_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'delivery_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    List<String> listImage = [
      "https://static-01.daraz.com.bd/p/09acfc27356659055d44f9fa0b97f393.jpg",
      "https://static-01.daraz.com.bd/p/09acfc27356659055d44f9fa0b97f393.jpg",
      "https://static-01.daraz.com.bd/p/09acfc27356659055d44f9fa0b97f393.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
          child: Text(
            "Shopping Cart",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext ctx, index) {
              return Column(
                children: [

                  Container(
                    alignment: Alignment.topLeft,
                    //color: Colors.yellow,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(listImage[index]),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width * 0.6,
                                  child: Text('BARDI Smart Light Bulb Lamp Bholm LED Wireless RGBWW 12W 12 watt Home loT')),

                              Text(
                                'price : \$ 11.55',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: 260,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showAlertDialog(context);
                                      },
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black38),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        _itemCount != 0
                                            ? InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _itemCount--;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color: Colors.cyan,
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(8)),
                                                  child: Center(
                                                    child: Text(
                                                      "-",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.cyan,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: Center(
                                                  child: Text(
                                                    "-",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ),
                                        SizedBox(width: 5),
                                        Text(
                                          _itemCount.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 5),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              _itemCount ++;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.cyan,
                                                // border: Border.all(color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ),
                                        // SizedBox(
                                        //     width:
                                        //         MediaQuery.of(context).size.width *
                                        //             0.39),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black12,
                  ),

                ],
              );
            },
          ),
          Container(
            //height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            // color: Colors.yellow,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ScratchCardScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_sharp,
                                color: Colors.green, size: 20),
                            SizedBox(width: 10),
                            Text(
                              "Use coupons",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(width: 220),
                            Icon(Icons.arrow_forward_ios_sharp,
                                color: Colors.black54, size: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          Text(
                            "\$ 40.66",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.red),
                          )
                        ],
                      ),
                      SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DeliveryScreen()),
                                );
                              },
                              child: Text("Next",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green))),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text('Delete Wishlist'),
    content: Text('Are you sure to delete this item from your Wishlist?'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          'No',
          style: TextStyle(color: Colors.cyan),
        ),
      ),
      TextButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "Item deleted");
          Navigator.pop(context);
        },
        child: Text(
          'Yes',
          style: TextStyle(color: Colors.cyan),
        ),
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext) {
      return alert;
    },
  );
}
