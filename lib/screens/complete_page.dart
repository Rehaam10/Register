// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../shared_components.dart';

class Complete extends StatelessWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CompletePage extends StatefulWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CompletePage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                defaultText(text: 'Registration Complete'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    defaultDivider(color: Colors.pink[400]),
                    SizedBox(width: 10.0),
                    defaultDivider(color: Colors.pink[400]),
                    SizedBox(width: 10.0),
                    defaultDivider(color: Colors.pink[400]),
                    SizedBox(width: 10.0),
                    defaultDivider(color: Colors.pink[400]),
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
                      SizedBox(height: 15),
                      defaultText(
                          text: 'Your account registration is now complete!',
                          fontSize: 25.0),
                      SizedBox(height: 10),
                      defaultText(
                          text:
                              'you have now successfully registered for the portal. start adding bags and trips to begin your adventure',
                          fontSize: 15),
                    ],
                  ),
                ),
              ],
            ),
            defaultButton(onPress: () {}, text: 'finish'),
          ],
        ),
      ),
    );
  }
}
