import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String title;
  bool isPassword;
  TextEditingController controller;
  TextInputType textInputType;
 // bool readOnly;

  CustomTextField(
      {@required this.title, @required this.isPassword, @required this.controller, this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle( fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller,
            obscureText: isPassword,
            keyboardType:textInputType,
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
          ),
        ],
      ),
    );
  }
}
