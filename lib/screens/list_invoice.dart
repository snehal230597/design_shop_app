import 'package:design_shop_app/screens/review_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'List Invoice',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: double.infinity,
          height: 203,
          child: Card(
            elevation: 1,
            shape:
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3 September 2020',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'INV385714262',
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://cdn.shopify.com/s/files/1/0332/3917/1117/products/3_1c53389a-a26a-4f76-be46-82eb177d00c4.jpg?v=1612348185')),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Longitech G502 Hero/ Mouse Longitech G',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '502 Hero Original Garansi Resmi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '+2 other product',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(
                    color: Colors.black26,
                  ),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => ReviewProductScreen() ));
                        },
                        child: Text(
                          'Review >',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
