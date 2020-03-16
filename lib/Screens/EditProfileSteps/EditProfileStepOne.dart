import 'package:flutter/material.dart';
import 'package:pay_trippa/Forms/EditProfileForms/EditProfileFormStepOne.dart';

class EditProfileStepOne extends StatefulWidget {
  @override
  _EditProfileStepOneState createState() => _EditProfileStepOneState();
}

class _EditProfileStepOneState extends State<EditProfileStepOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
                                'Edit Profile',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
      ),
      body: SafeArea(child: EditProfileFormOne()),
    );
  }
}