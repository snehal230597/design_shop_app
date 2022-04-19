import 'package:flutter/material.dart';

class NotificationSettingScreen extends StatefulWidget {
  @override
  State<NotificationSettingScreen> createState() => _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
   bool _isSwitched1 = false;
   bool _isSwitched2 = false;
   bool _isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          " Notification Setting",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Promotion', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Switch(value: _isSwitched1, onChanged: (value){
                  setState(() {
                    _isSwitched1 = value;
                  },
                  );
                },
                activeColor: Colors.green),
              ],
            ),
          ),
          Container(
            height: 0.1,
            width: double.infinity,
            color: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chat', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Switch(value: _isSwitched2, onChanged: (value){
                  setState(() {
                    _isSwitched2 = value;
                  },
                  );
                },
                    activeColor: Colors.green),
              ],
            ),
          ),
          Container(
            height: 0.1,
            width: double.infinity,
            color: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Order Status', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Switch(value: _isSwitched3, onChanged: (value){
                  setState(() {
                    _isSwitched3 = value;
                  },
                  );
                },
                    activeColor: Colors.green),
              ],
            ),
          ),
          Container(
            height: 0.1,
            width: double.infinity,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}
