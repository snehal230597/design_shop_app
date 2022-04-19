import 'package:flutter/material.dart';

class OrderListDetails extends StatelessWidget {
  const OrderListDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Order List',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, index) {
          return Container(
          width: double.infinity,
            child: Card(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: (index == 4) ? 10 : 0),
              elevation: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('on process', style: TextStyle(color: Colors.cyan),),
                  ),),
                  Divider(color: Colors.black26),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('12 Auguest', style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('INV385739475', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network('https://cdn.shopify.com/s/files/1/0332/3917/1117/products/3_1c53389a-a26a-4f76-be46-82eb177d00c4.jpg?v=1612348185')),
                        ),
                        SizedBox(width: 10),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Longitech G502 Hero/ Mouse Longitech G', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('502 Hero Original Garansi Resmi', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('+2 other product', style: TextStyle(color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(color: Colors.black26),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Total Payment'),
                            Text('\$36', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
