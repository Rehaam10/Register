// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import '../shared_components.dart';

import 'Address_Details.dart';

class PersonalDetails extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  PersonalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: defaultText(
          text: 'Register',
          fontSize: 30.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(
                        text: 'Personal Details',
                        fontSize: 20.0,
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          defaultDivider(color: Colors.black12),
                          SizedBox(width: 10.0),
                          defaultDivider(color: Colors.black12),
                          SizedBox(width: 10.0),
                          defaultDivider(color: Colors.black12),
                          SizedBox(width: 10.0),
                          defaultDivider(color: Colors.black12),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      defaultText(
                        text: 'Profile Picture',
                        fontSize: 15.0,
                      ),
                      SizedBox(height: 20.0),
                      Center(
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              radius: 50.0,
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              radius: 20.0,
                              backgroundColor: Colors.pinkAccent,
                            ),
                          ],
                        ),
                      ),
                      defaultText(text: 'Full Name'),
                      SizedBox(height: 10.0),
                      defaultTextFormField(
                          hint: 'enter your full name',
                          type: TextInputType.text),
                      SizedBox(height: 10.0),
                      defaultText(text: 'Email'),
                      SizedBox(height: 10.0),
                      defaultTextFormField(
                          hint: 'enter email address',
                          type: TextInputType.emailAddress),
                      SizedBox(height: 10.0),
                      defaultText(text: 'Phone Number'),
                      SizedBox(height: 10.0),
                      defaultTextFormField(
                          hint: 'enter your phone number',
                          type: TextInputType.phone),
                    ],
                  ),
                ),
              ),
            ),
            defaultButton(
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => AddressDetails(),
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
