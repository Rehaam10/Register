// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared_components.dart';

import 'Attachments.dart';

class AddressDetails extends StatefulWidget {
  AddressDetails({Key? key}) : super(key: key);

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  var formKey2 = GlobalKey<FormState>();

  dynamic dropdownValue = 0;

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
                  text: 'Address Details',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
              SizedBox(height: 20.0),
              Row(
                children: [
                  defaultDivider(),
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
                                  defaultText(
                                      text: 'Country',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: DropdownButton(
                                      iconEnabledColor:
                                          Colors.pink.withOpacity(0.7),
                                      iconDisabledColor:
                                          Colors.pink.withOpacity(0.7),
                                      iconSize: 30,
                                      style: TextStyle(
                                          // fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 18),
                                      onChanged: (newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                      },
                                      value: dropdownValue,
                                      isExpanded: true,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text('egypt'),
                                          value: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  defaultText(
                                      text: 'City',
                                      fontWeight: FontWeight.w500),
                                  SizedBox(height: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: DropdownButton(
                                      iconEnabledColor:
                                          Colors.pink.withOpacity(0.7),
                                      iconDisabledColor:
                                          Colors.pink.withOpacity(0.7),
                                      iconSize: 30,
                                      style: TextStyle(
                                          // fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 18),
                                      onChanged: (newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                      },
                                      value: dropdownValue,
                                      isExpanded: true,
                                      underline: null,
                                      isDense: false,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text('cairo'),
                                          value: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        defaultText(text: 'State', fontWeight: FontWeight.w500),
                        SizedBox(height: 10.0),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: DropdownButton(
                            iconEnabledColor: Colors.pink.withOpacity(0.7),
                            iconDisabledColor: Colors.pink.withOpacity(0.7),
                            iconSize: 30,
                            style: TextStyle(
                                // fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 18),
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            value: dropdownValue,
                            isExpanded: true,
                            items: [
                              DropdownMenuItem(
                                child: Text('egypt'),
                                value: 0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        defaultText(
                            text: 'Street', fontWeight: FontWeight.w500),
                        SizedBox(height: 10.0),
                        defaultTextFormField(
                            hint: '4987 Cameron Road',
                            hintColor: Colors.black,
                            type: TextInputType.name),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Expanded(
                                child: defaultTextFormField(
                              hint: 'building No.',
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: defaultTextFormField(hint: 'floor No.')),
                            SizedBox(width: 10.0),
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
              ),
            ],
          ),
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
