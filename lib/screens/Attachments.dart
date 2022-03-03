// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'setUp.dart';
import '../shared_components.dart';

class Attachments extends StatelessWidget {
  var formKey3 = GlobalKey<FormState>();

  Attachments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  text: 'Attachments',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
              SizedBox(height: 20.0),
              Row(
                children: [
                  defaultDivider(),
                  SizedBox(width: 10.0),
                  defaultDivider(),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(
                          text: 'National ID', fontWeight: FontWeight.w500),
                      SizedBox(height: 10.0),
                      defaultTextFormField(
                        hint: 'Placeholder',
                        suffix: Icons.camera_alt_outlined,
                        iconColor: Colors.pink.withOpacity(0.7),
                      ),
                    ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
