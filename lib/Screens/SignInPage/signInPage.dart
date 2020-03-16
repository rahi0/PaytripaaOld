import 'package:country_pickers/countries.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:pay_trippa/Forms/SignInForm/signUpForm.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
              child: SignInForm(),
      ),
    );
  }
}









// class CountryPickerUtils {
//   static Country getCountryByIsoCode(String isoCode) {
//     try {
//       return countryList.firstWhere(
//         (country) => country.isoCode.toLowerCase() == isoCode.toLowerCase(),
//       );
//     } catch (error) {
//       throw Exception("The initialValue provided is not a supported iso code!");
//     }
//   }

//   static String getFlagImageAssetPath(String isoCode) {
//     return "assets/${isoCode.toLowerCase()}.png";
//   }

//   static Widget getDefaultFlagImage(Country country) {
//     return Image.asset(
//       CountryPickerUtils.getFlagImageAssetPath(country.isoCode),
//       height: 20.0,
//       width: 40.0,
//       fit: BoxFit.fill,
//       package: "country_pickers",
//     );
//   }

//   static Country getCountryByPhoneCode(String phoneCode) {
//     try {
//       return countryList.firstWhere(
//         (country) => country.phoneCode.toLowerCase() == phoneCode.toLowerCase(),
//       );
//     } catch (error) {
//       throw Exception(
//           "The initialValue provided is not a supported phone code!");
//     }
//   }
// }