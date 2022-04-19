import 'package:design_shop_app/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Delivery",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Home Address",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 20,
                          width: 70,
                          color: Colors.cyan,
                          child: Center(
                            child: Text(
                              "Default*",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("53/Rajnagar Society part-1"),
                    Text("Karannagar road, KADI"),
                    Text("PIN - 382715"),
                    Text("Gujarat"),
                    Text("INDIA"),
                    Padding(
                      padding: const EdgeInsets.only(left: 255),
                      child: Text(
                        "Change Address",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Order List",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (BuildContext ctx, index) {
                        return Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              //color: Colors.yellow,
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 16),
                                    child: Container(
                                      height: 75,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                            "https://m.media-amazon.com/images/I/61y5upHrmeS.jpg"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'BARDI Smart Light Bulb Lamp Bholm LED',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'Wireless RGBWW 12W 12 watt Home loT',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2 item(150 gr)',
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '\$ 17.2',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 15),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Devilery",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.airport_shuttle_outlined,
                                color: Colors.green, size: 23),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.3),
                            Text(
                              "Choose Delivery",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            //   SizedBox(width: MediaQuery.of(context).size.width * 0.5),
                            Icon(Icons.arrow_forward_ios_sharp,
                                color: Colors.black54, size: 15),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sub Total',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '\$40.16',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PaymentScreen()));
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            child: Text(
                              'Pay',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
