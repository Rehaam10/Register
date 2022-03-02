import 'package:flutter/material.dart';

Widget defaultDivider({Color? color, double? thickness}) => Expanded(
      child: Divider(
        thickness: 4,
        color: color,
      ),
    );

Widget defaultTextFormField({
  TextInputType type = TextInputType.number,
  //DropdownButtonHideUnderline? dropDownButtonHideUnderline,
  Function? onSubmit,
  Color iconColor = Colors.pinkAccent,
  void Function()? onTab,
  String hint = 'Placeholder',
  double? hintSize,
  String? Function(String?)? onValid,
  IconData? suffix,
}) =>
    TextFormField(
      keyboardType: type,
      onTap: onTab,
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
          fontSize: hintSize,
        ),
        border: OutlineInputBorder(),
        suffixIcon: Icon(
          suffix,
          color: iconColor,
        ),
      ),
    );

Widget defaultText({
  String text = 'National ID',
  double fontSize = 18,
}) =>
    Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: fontSize,
      ),
    );

// elevatedButton

Widget defaultButton({
  double minWidth = 400,
  bool isUpperCase = true,
  required void Function() onPress,
  required String text,
}) =>
    FlatButton(
      minWidth: minWidth,
      height: 40.0,
      color: Colors.pink[400],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      onPressed: onPress,
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
