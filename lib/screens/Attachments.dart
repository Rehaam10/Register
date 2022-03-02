// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'setUp.dart';
import '../shared_components.dart';

class Attachments extends StatelessWidget {
  var formKey3 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: defaultText(
          text: 'Register',
          fontSize: 30.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultText(
              text: 'Attachments',
              fontSize: 20.0,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                defaultDivider(color: Colors.pink[400]),
                SizedBox(width: 10.0),
                defaultDivider(color: Colors.pink[400]),
                SizedBox(width: 10.0),
                defaultDivider(color: Colors.black12),
                SizedBox(width: 10.0),
                defaultDivider(color: Colors.black12),
              ],
            ),
            SizedBox(height: 50.0),
            Form(
              key: formKey3,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(),
                      SizedBox(height: 5.0),
                      defaultTextFormField(suffix: Icons.camera_alt_outlined),
                    ],
                  ),
                ),
              ),
            ),
            defaultButton(
                onPress: () {
                  if (formKey3.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => SetUpPage(),
                      ),
                    );
                  }
                },
                text: 'next'),
          ],
        ),
      ),
    );
  }
}
