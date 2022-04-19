import 'package:flutter/material.dart';

class PaymentDialog extends StatefulWidget {
  @override
  State<PaymentDialog> createState() => _PaymentDialogState();
}

class _PaymentDialogState extends State<PaymentDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
          'Your payment is success, we will prepare your order as soon as possible'),
      children: [
        ElevatedButton(
          onPressed: () {

          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text('Ok'),
        ),
      ],
    );
  }
}
