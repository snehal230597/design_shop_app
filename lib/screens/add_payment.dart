import 'package:design_shop_app/models/sizebox_model.dart';
import 'package:design_shop_app/screens/atm.dart';
import 'package:design_shop_app/widget/data_table.dart';
import 'package:flutter/material.dart';

class AddPaymentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Payment Method',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Default Payment Preferences', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Payment Method', style: TextStyle(color: Colors.black54),),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 20,
                            width: 70,
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgypnMtKQbO5QJvBFSOP1yaJVAGyZrPGQ-bh3cZyVDFlujjJgBPiskC-F6uJri7id9QQ&usqp=CAU')),
                        Text('Visa card ending in 4392', style: TextStyle( fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 25),
                    Text('Billing Address', style: TextStyle(color: Colors.black54),),
                    SizedBox(height: 10),
                    Text('As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.'),
                    SizedBox(height: 25),
                    Text('Phone Number', style: TextStyle(color: Colors.black54),),
                    Text('7698065099', style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text('List of Payment Method', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            Divider(color: Colors.black54),
            SizedBox(height: 20),
            ListDataTable(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => AtmCardScreen()));
                  },
                  child: Container(

                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan, width: 1.5),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Center(child: Text('Add a card', style: TextStyle(color: Colors.cyan, fontSize: 15, fontWeight: FontWeight.bold),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
