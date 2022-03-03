// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import '../shared_components.dart';
import 'package:image_picker/image_picker.dart';

import 'Address_Details.dart';

final ImagePicker _picker = ImagePicker();
File? profileImage;

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
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
                            fontWeight: FontWeight.w500),
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
                        SizedBox(height: 25.0),
                        Center(
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.withOpacity(0.7),
                                radius: 60.0,
                                backgroundImage: profileImage == null
                                    ? null
                                    : FileImage(profileImage!),
                              ),
                              InkWell(
                                onTap: () async {
                                  await getProfileImage();
                                },
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  radius: 20.0,
                                  backgroundColor: Colors.pink.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        defaultText(
                            text: 'Full Name', fontWeight: FontWeight.w500),
                        SizedBox(height: 10.0),
                        defaultTextFormField(
                            hint: 'enter your full name',
                            type: TextInputType.text),
                        SizedBox(height: 10.0),
                        defaultText(text: 'Email', fontWeight: FontWeight.w500),
                        SizedBox(height: 10.0),
                        defaultTextFormField(
                            hint: 'enter email address',
                            type: TextInputType.emailAddress),
                        SizedBox(height: 10.0),
                        defaultText(
                            text: 'Phone Number', fontWeight: FontWeight.w500),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getProfileImage() async {
    if (profileImage != null) {
      profileImage = null;
    }
    await _picker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() => profileImage = File(value!.path));
    }).catchError((error) {
      print(error.toString());
    });
  }
}
