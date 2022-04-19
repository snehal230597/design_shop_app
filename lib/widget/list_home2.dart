import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ListHomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(left: 10),
      height: 270,
      width: double.infinity,
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
                        "https://sc02.alicdn.com/kf/H04ca7d25a77243e6ba180c04a75a4b13T/229347280/H04ca7d25a77243e6ba180c04a75a4b13T.jpg",
                  ),
                ),
              );
            },
            child: Container(
              height: 250,
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
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        child: Image.network(
                            "https://sc02.alicdn.com/kf/H04ca7d25a77243e6ba180c04a75a4b13T/229347280/H04ca7d25a77243e6ba180c04a75a4b13T.jpg",
                            alignment: Alignment.topCenter,
                            fit: BoxFit.fill),
                      ),
                    ),
                    //   Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Royal Goldal AL-habibi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          Text(
                            'vintage watch',
                            style: TextStyle(color: Colors.black54),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Price : \$ 9999.96",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 18,
                          ),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          SizedBox(width: 10),
                          Text(
                            "(212)",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
