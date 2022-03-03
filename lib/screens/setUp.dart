// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import '../shared_components.dart';

import 'complete_page.dart';

class SetUpPage extends StatefulWidget {
  var formKey4 = GlobalKey<FormState>();

  @override
  _SetUpPageState createState() => _SetUpPageState();
}

class _SetUpPageState extends State<SetUpPage> {
  var formKey4 = GlobalKey<FormState>();
  bool passwordVisible = true;
  bool passwordVisible2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsetsDirectional.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              defaultText(
                text: 'Register',
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          defaultText(
              text: 'Set Up Your Password',
              fontSize: 20,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              defaultDivider(),
              SizedBox(width: 15.0),
              defaultDivider(),
              SizedBox(width: 15.0),
              defaultDivider(),
              SizedBox(width: 15.0),
              defaultDivider(color: Colors.black12),
            ],
          ),
          SizedBox(height: 70.0),
          Form(
            key: formKey4,
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    defaultTextFormField(
                        hint: 'Enter password',
                        suffix: passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        iconColor: Colors.grey,
                        onTab: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        }),
                    SizedBox(height: 15),
                    defaultTextFormField(
                        hint: 'Re-enter password',
                        suffix: passwordVisible2
                            ? Icons.visibility_off
                            : Icons.visibility,
                        iconColor: Colors.grey,
                        onTab: () {
                          setState(() {
                            passwordVisible2 = !passwordVisible2;
                          });
                        }),
                  ],
                ),
              ),
            ),
          ),
          defaultButton(
            onPress: () {
              if (formKey4.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (Context) => CompletePage(),
                  ),
                );
              }
            },
          ),
        ]),
      ),
    ));
  }
}
