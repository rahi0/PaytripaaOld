import 'package:flutter/material.dart';
import 'package:pay_trippa/Forms/AddPlatformForm/addPlatformForm.dart';


class AddPlatformPage extends StatefulWidget {
  @override
  _AddPlatformPageState createState() => _AddPlatformPageState();
}

class _AddPlatformPageState extends State<AddPlatformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(child: AddPlatformForm()),
    );
  }
}