import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page..dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          " Payment",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summary',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '\$74',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Method',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Change',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 20,
                          width: 70,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgypnMtKQbO5QJvBFSOP1yaJVAGyZrPGQ-bh3cZyVDFlujjJgBPiskC-F6uJri7id9QQ&usqp=CAU')),
                      Text(
                        'Visa card ending in 4392',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text(
                  'Pay Now',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text('payment confirmation'),
    content: Text(
        'Your payment is success, we will prepare your order as soon as possible'),
    actions: [
      ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => HomePage()),
                (route) => false);
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text('Done'))
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
