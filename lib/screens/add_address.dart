import 'package:design_shop_app/models/address_model.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  TextEditingController _addressController = TextEditingController();
  TextEditingController _recipientsNameController = TextEditingController();
  TextEditingController _recipientsNumberController = TextEditingController();
  TextEditingController _address1Controller = TextEditingController();
  TextEditingController _address2Controller = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _postalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        title: Text(
          'Add Address',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            TextFormField(
              controller: _addressController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Address Title *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFormField(
              controller: _recipientsNameController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Recipient\'s Name *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFormField(
              controller: _recipientsNumberController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Recipient\'s Phone number *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFormField(
              controller: _address1Controller,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Address Line 1 *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFormField(
              controller: _address2Controller,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Address Line 2 *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFormField(
              controller: _stateController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'State / Province / Region *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFormField(
              controller: _postalController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Postal code *',
                labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  setState(() {
                    AddressData().addreassList.add(
                          AddressModel(
                              title: _addressController.text,
                              state: _stateController.text,
                              pincod: _postalController.text,
                              number: _recipientsNumberController.text,
                              address: _address1Controller.text,
                              name: _recipientsNameController.text),
                        );
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
