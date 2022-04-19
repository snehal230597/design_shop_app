import 'package:design_shop_app/models/notification_model.dart';
import 'package:design_shop_app/screens/order_list_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Notification',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: NotificationData().notificationData.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => OrderListScreen() ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  // color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NotificationData().notificationData[index].title!,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          NotificationData()
                              .notificationData[index]
                              .date
                              .toString(),
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text(
                          NotificationData().notificationData[index].subtitle!,
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.black45,)
            ],
          );
        },
      ),
    );
  }
}
