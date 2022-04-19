
import 'package:design_shop_app/screens/add_address.dart';
import 'package:flutter/material.dart';

class SetAddressScreen extends StatefulWidget {

  @override
  State<SetAddressScreen> createState() => _SetAddressScreenState();
}

class _SetAddressScreenState extends State<SetAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Set Address',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => AddAddressScreen()));
          }, icon: Icon(Icons.add),),
        ],
      ),
      body: ListView.builder(
          itemCount:5,
          itemBuilder: (BuildContext context, index) {
        return Container(
          height:MediaQuery.of(context).size.height * 0.251,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Home Address', style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          height: 18,
                          width:65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.cyan
                          ),
                          child: Center(child: Text('Default*', style: TextStyle(color: Colors.white, fontSize: 12),)),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text('Snehal Prajapati', style: TextStyle(fontSize: 13),),
                    Text('07698062066', style: TextStyle(fontSize: 13),),
                    Text('53-RajNagar Society part-1', style: TextStyle(fontSize: 13),),
                    Text('KADI,gujarat', style: TextStyle(fontSize: 13),),
                    Text('INDIA', style: TextStyle(fontSize: 13),),
                //    SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        TextButton(onPressed: (){}, child: Text('Edit', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)),
                        TextButton(onPressed: (){
                          showAlertDialog(context);
                        }, child: Text('Delete', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

showAlertDialog(BuildContext context){
  AlertDialog alert = AlertDialog(
    title: Text('Delete Address'),
    content: Text('Are you sure to delete this address?'),
    actions: [
      TextButton(onPressed: (){}, child: Text('No', style: TextStyle(color: Colors.green),),),
      TextButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text('Yes', style: TextStyle(color: Colors.green),),),
    ],
    
  );
   showDialog(context: context,
       builder: (BuildContext context){
     return alert;
       });
}