import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_e/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String lableText;
  final TextInputType type;
  final bool isPassword;

  const CustomTextField(
      {Key key,
      this.hintText,
      this.lableText,
      this.type,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        hintText: hintText,
        label: Text(lableText),
      ),
    );
  }
}
