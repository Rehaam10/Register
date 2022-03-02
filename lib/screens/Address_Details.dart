// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, unused_element

import 'package:flutter/material.dart';
import '../shared_components.dart';

import 'Attachments.dart';

class AddressDetails extends StatelessWidget {
  var formKey2 = GlobalKey<FormState>();

  AddressDetails({Key? key}) : super(key: key);

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
              text: 'Address Details',
              fontSize: 20.0,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                defaultDivider(color: Colors.pink[400]),
                SizedBox(width: 10.0),
                defaultDivider(color: Colors.black12),
                SizedBox(width: 10.0),
                defaultDivider(color: Colors.black12),
                SizedBox(width: 10.0),
                defaultDivider(color: Colors.black12),
              ],
            ),
            SizedBox(height: 40.0),
            Form(
              key: formKey2,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                defaultText(text: 'Country'),
                                SizedBox(height: 5.0),
                                defaultTextFormField(
                                  hint: 'egypt',
                                  suffix: Icons.keyboard_arrow_down_rounded,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                defaultText(text: 'City'),
                                SizedBox(height: 10.0),
                                defaultTextFormField(
                                    hint: 'cairo',
                                    suffix: Icons.keyboard_arrow_down_rounded),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      defaultText(text: 'State'),
                      SizedBox(height: 10.0),
                      defaultTextFormField(
                          hint: 'egypt',
                          suffix: Icons.keyboard_arrow_down_rounded),
                      SizedBox(height: 10.0),
                      defaultText(text: 'Street'),
                      SizedBox(height: 10.0),
                      defaultTextFormField(
                          hint: '4987 Cameron Road', type: TextInputType.name),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Expanded(
                              child:
                                  defaultTextFormField(hint: 'building No.')),
                          SizedBox(width: 5.0),
                          Expanded(
                              child: defaultTextFormField(hint: 'floor No.')),
                          SizedBox(width: 5.0),
                          Expanded(
                              child:
                                  defaultTextFormField(hint: 'building No.')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            defaultButton(
                onPress: () {
                  if (formKey2.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => Attachments(),
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
/*
class CountryListDataModel {
  String? CountryName;
  String? CountryLogo;
  CountryListDataModel(this.CountryName,this.CountryLogo);
}
 */