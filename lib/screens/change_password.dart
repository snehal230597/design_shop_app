import 'package:design_shop_app/screens/account_screen.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Change password',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            TextFormField(
              obscureText: _isObscure1,
              decoration: InputDecoration(
                labelText: 'New Password',
                labelStyle: TextStyle(color: Colors.black54),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        _isObscure1 = !_isObscure1;
                      },
                    );
                  },
                  icon: Icon(
                      (_isObscure1 ? Icons.visibility : Icons.visibility_off),
                      color: _isObscure1 ? Colors.green : Colors.grey),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            TextFormField(
              obscureText: _isObscure2,
              decoration: InputDecoration(
                labelText: 'Retype Password',
                labelStyle: TextStyle(color: Colors.black54),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        _isObscure2 = !_isObscure2;
                      },
                    );
                  },
                  icon: Icon(
                      (_isObscure2 ? Icons.visibility : Icons.visibility_off),
                      color: _isObscure2 ? Colors.green : Colors.grey),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.height * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text(
                  'Save',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
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
    title: Text('Verify'),
    content: Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        children: [
          Text('Enter your old password to change the new '),
          TextField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          )
        ],
      ),
    ),

    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Cancle', style: TextStyle(color: Colors.green),),
      ),
      TextButton(
        onPressed: () {
          SuccessShowAlertDialog(context);
        },
        child: Text('Submit', style: TextStyle(color: Colors.green),),
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

SuccessShowAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Text('Change Password Successfully'),
    actions: [
      Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AccountScreen() ));
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text('OK', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
