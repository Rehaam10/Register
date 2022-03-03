// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../shared_components.dart';

class CompletePage extends StatefulWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                      text: 'Registration Complete!',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      defaultDivider(),
                      SizedBox(width: 10.0),
                      defaultDivider(),
                      SizedBox(width: 10.0),
                      defaultDivider(),
                      SizedBox(width: 10.0),
                      defaultDivider(),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                                radius: 40, backgroundColor: Colors.green[600]),
                            Icon(Icons.check, size: 50, color: Colors.white),
                          ],
                        ),
                        SizedBox(height: 20),
                        defaultText(
                            text:
                                'Your account registration \n is now complete!',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500),
                        SizedBox(height: 20),
                        defaultText(
                            text:
                                'you have now successfully registered for \n the portal.\n \n start adding bags and trips to begin your \n adventure.',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ),
                ],
              ),
              defaultButton(onPress: () {}, text: 'Finish'),
            ],
          ),
        ),
      ),
    );
  }
}
