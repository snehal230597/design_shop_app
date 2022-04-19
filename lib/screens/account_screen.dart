import 'package:design_shop_app/home_page..dart';
import 'package:design_shop_app/models/order_status_model.dart';
import 'package:design_shop_app/screens/add_payment.dart';
import 'package:design_shop_app/screens/change_password.dart';
import 'package:design_shop_app/screens/favorite_screen.dart';
import 'package:design_shop_app/screens/language.dart';
import 'package:design_shop_app/screens/list_invoice.dart';
import 'package:design_shop_app/screens/login_screen.dart';
import 'package:design_shop_app/screens/notification.dart';
import 'package:design_shop_app/screens/order_list_details.dart';
import 'package:design_shop_app/screens/set_address.dart';
import 'package:design_shop_app/widget/about.dart';
import 'package:design_shop_app/widget/privacy_policy.dart';
import 'package:design_shop_app/widget/terms_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<String> listText = [
       "Change password",
       "Set Address for Delivery",
       "Oredr List",
       "Review product",
       "Payment Method",
       "Last Seen Product",
       "Change Language",
       "Notifiaction Setting",
       "About",
       "Terms And Conditions",
       "Privacy Policy"
     ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:   Text(
          'Account',
          style: TextStyle(fontSize: 20,color: Colors.black , fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: (){},
            icon:  Icon(
              Icons.message,
              color: Colors.black54,
            ),
          ),
          SizedBox(width: 10),
          IconButton(onPressed: (){},
            icon: Icon(
              Icons.notification_add,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              //  color: Colors.lime,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 50,
                      child: ClipRRect(
                        child: Image.asset('assets/image/sp.jpeg'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Snehal Prajapati",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Account information",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15,
                              color: Colors.black54,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
            //  height: MediaQuery.of(context).size.height * 0.63,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listText.length,
                itemBuilder: (BuildContext ctx, index) {
                  Widget? page;
                  switch(index){
                    case 0:{
                      page = ChangePassword();
                    }
                    break;
                    case 1:{
                      page = SetAddressScreen();
                    }
                      break;
                    case 2 : {
                      page = OrderListDetails();
                    }
                    break;
                    case  3: {
                      page = ListInvoice();
                    }
                    break;
                    case  4: {
                      page = AddPaymentScreen();
                    }
                    break;
                    case  5: {
                      page = FavoriteScreen();
                    }
                    break;
                    case  6: {
                      page = ChangeLanguageScreen();
                    }
                    break;
                    case  7: {
                      page = NotificationSettingScreen();
                    }
                    break;
                    case  8: {
                      page = AboutScreen();
                    }
                    break;
                    case  9: {
                      page =  TermsAndConditions();
                    }
                    break;
                    case  10: {
                      page =  PrivacyPolicyScreen();
                    }
                    break;
                  }

                  return Column(
                    children: [
                      ListTile(
                        title: Text(listText[index], style: TextStyle(fontSize: 17, color: Colors.black87),),
                        trailing: Icon(Icons.arrow_forward_ios_sharp, size: 16,color: Colors.black38,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> page!));
                        }
                      ),

                      Divider()
                    ],
                  );

                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pop(MaterialPageRoute(builder: (_) => LoginScreen()));
                }, icon: Icon(Icons.logout, color: Colors.red),),
                InkWell(
                    onTap: (){
                      Navigator.of(context).pop(MaterialPageRoute(builder: (_) => LoginScreen()));
                    },
                    child: Text("Sing Out", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize: 20),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
