import 'package:flutter/material.dart';

class AtmCardScreen extends StatefulWidget {
  @override
  State<AtmCardScreen> createState() => _AtmCardScreenState();
}

class _AtmCardScreenState extends State<AtmCardScreen> {
  String? droupdownvalue1;
  String? droupdownvalue2;

  List<String> item1 = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12',
  ];
  List<String> item2 = [
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Add Payment Method',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Credit Card Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPMkXKFuONT5Bfl0t7hPDN7Cp58ZsDOjN1yO2jAlEhnoZkZo2vdwY61rN285SQxqA9Kh4&usqp=CAU'),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.network(
                      'https://w7.pngwing.com/pngs/92/785/png-transparent-mastercard-logo-mastercard-credit-card-payment-visa-nyse-ma-mastercard-logo-text-logo-sign.png'),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Credit Card Number *',
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Name of cardholder *',
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
            SizedBox(height: 20),
            Text(
              'Expired Date *',
              style: TextStyle(color: Colors.black87),
            ),
            Row(
              children: [
                DropdownButton(
                  value: droupdownvalue1,
                  hint: Text(
                    'Month',
                    style: TextStyle(color: Colors.green),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.green,
                  ),
                  items: item1.map<DropdownMenuItem<String>>((String items) {
                    return DropdownMenuItem<String>(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      droupdownvalue1 = newValue!;
                    });
                  },
                ),
                SizedBox(width: 15),
                DropdownButton(
                  value: droupdownvalue2,
                  hint: Text(
                    'Year',
                    style: TextStyle(color: Colors.green),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.green,
                  ),
                  items: item2.map<DropdownMenuItem<String>>((String items) {
                    return DropdownMenuItem<String>(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      droupdownvalue2 = newValue!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Text('Add Payment Method Success'),
    actions: [
      Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.green),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ),
    ],
  );
  showDialog(context: context, builder: (BuildContext context){
    return alert;
  });
}
