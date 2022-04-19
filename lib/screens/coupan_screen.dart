import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CoupanScreen extends StatefulWidget {
  @override
  State<CoupanScreen> createState() => _CoupanScreenState();
}

class _CoupanScreenState extends State<CoupanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Coupon",
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black,
                    ),
                    hintText: 'Search Product',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        height: 4 / 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              elevation: 1,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff2bbdd2),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              height: 20,
                              width: 80,
                              child: Center(
                                child: Text(
                                  'Limited Offer',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text('FASHION50',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 80,
                          width: 150,
                          child: Image.network('https://res.cloudinary.com/practicaldev/image/fetch/s--7v06uXC7--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/rsksdkf2ycuza4p68r3e.png'),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.access_time,
                                size: 10, color: Colors.grey),
                            SizedBox(width: 10),
                            Text(
                              'Expiring in 2 days',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                              Fluttertoast.showToast(
                                msg: "Coupon Added",
                              );
                            });
                          },
                          child: Text(
                            'Use Now',
                            style: TextStyle(color: Colors.cyan),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
