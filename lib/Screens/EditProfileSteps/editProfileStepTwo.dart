import 'package:flutter/material.dart';
import 'package:pay_trippa/Forms/EditProfileForms/EditProfileFormStepTwo.dart';

class EditProfileStepTwo extends StatefulWidget {
  @override
  _EditProfileStepTwoState createState() => _EditProfileStepTwoState();
}

class _EditProfileStepTwoState extends State<EditProfileStepTwo> {
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
      body: SafeArea(child: EditProfileFormStepTwo()),
    );
  }
}