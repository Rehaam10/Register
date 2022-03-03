// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, deprecated_member_use, unused_element, sized_box_for_whitespace

import 'package:flutter/material.dart';

Widget defaultDivider({Color? color}) => Expanded(
      child: Container(
        height: 5,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color == null
              ? Colors.pink.withOpacity(0.7)
              : Colors.grey.withOpacity(0.2),
        ),
      ),
    );

Widget defaultTextFormField({
  TextInputType type = TextInputType.number,
  Function? onSubmit,
  void Function()? onTab,
  double? width,
  Color? iconColor,
  String? hint,
  Color? hintColor,
  String? Function(String?)? onValid,
  IconData? suffix,
}) =>
    TextFormField(
      keyboardType: type,
      onTap: onTab,
      style: TextStyle(
        color: Colors.black,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'invalid value';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: hintColor ?? Colors.grey,
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(),
        suffixIcon: Icon(
          suffix,
          color: iconColor ?? Colors.grey,
        ),
      ),
    );

Widget defaultText({
  String? text,
  double fontSize = 15,
  FontWeight? fontWeight,
}) =>
    Text(
      text!,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: fontWeight,
        color: Colors.black,
        fontSize: fontSize,
      ),
    );

Widget defaultButton({
  double minWidth = 400,
  bool isUpperCase = true,
  required void Function() onPress,
  String text = 'Next',
}) =>
    FlatButton(
      minWidth: minWidth,
      height: 40.0,
      textColor: Colors.white,
      color: Colors.pink.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      onPressed: onPress,
      child: Text(text),
    );
