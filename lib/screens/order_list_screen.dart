import 'package:design_shop_app/models/order_status_model.dart';
import 'package:design_shop_app/widget/stepE.dart';
import 'package:flutter/material.dart';


class OrderListScreen extends StatelessWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Oredr Status",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(

        itemCount: OrderListData().orderData.length,
       physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, index) {
          double height = 0;
          Color pathcolor=Colors.grey;
          Color containercolor=Colors.grey;
          switch(index){
            case 0:{
              height = 10;
              pathcolor=Colors.green;
              containercolor =Colors.green;
            }
            break;

          }
          return Column(
            children: [
              SizedBox(
                height: height,
              ),
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: Steps(
                  direction: Axis.vertical,
                  size: 10.0,
                  path: {'color': pathcolor, 'width': 3.0},
                  steps: [
                    {
                      'color': Colors.white,
                      'background': containercolor,
                      'label': index.toString(),
                      'content': Container(

                        height: 70,
                        //color: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                OrderListData().orderData[index].title!,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              Text(
                                OrderListData().orderData[index].date.toString(),
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                             // SizedBox(height: 5),
                              Text(OrderListData().orderData[index].subtitle!, style: TextStyle(color: Colors.black87))
                            ],
                          ),
                        ),
                      )
                    },
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
