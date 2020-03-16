import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/VerificationPage/veriFicationPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {

  bool isOpen = false;

  String countryName = "US";
  String countryPhoneCode = "+1";
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByIsoCode('US');

  
  TextEditingController phoneController = TextEditingController();


  _showMsg(msg) { //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
   }

  // Widget _buildDropdownItem(Country country) => Container(
  //       child: Row(
  //         children: <Widget>[
  //           CountryPickerUtils.getDefaultFlagImage(country),
  //           //Text("+${country.phoneCode}(${country.isoCode})"),
  //         ],
  //       ),
  //     );
  

   Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
         // SizedBox(width: 8.0),
          //Text("+${country.phoneCode}"),
          SizedBox(width: 8.0),
          isOpen == true ? Flexible(child: Text(country.name)) : Container()
        ],
      );

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Color(0XFFFF9101)),
            child: CountryPickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.grey,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select your Country'),
                onValuePicked: (Country country) {
                  setState(() {
                    _selectedDialogCountry = country;
                    countryName = "${country.iso3Code}";
                    countryPhoneCode = "+${country.phoneCode}";
                    isOpen = false;
                  });
                },
                    //setState(() => _selectedDialogCountry = country),
                itemBuilder: _buildDialogItem)),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              /////////////// Top Part Start ////////////////
              
              Container(
              //  color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2 - 20,
                padding: EdgeInsets.only(left: 25, right: 25,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 40,top: 10),
                      child: Text(
                          "Activate Your Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0XFF414042),
                              fontFamily: "SourceSansPro",
                              fontSize: 22,
                              fontWeight: FontWeight.normal),
                        ),
                    ),


                    ///////////////// Country Textfield  Start///////////////
                  GestureDetector(
                    onTap: (){
                      _openCountryPickerDialog();
                      setState(() {
                        isOpen = true;
                      });
                    },
                     child: Container(
                      padding: EdgeInsets.only(bottom: 15, top: 15, left: 20, right: 5),
                     // margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        border: Border.all(
                          color: Color(0xFFC5C2C7), width: 1.5
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                             countryName,
                              style: TextStyle(
                              color: Color(0xFFDEDDDF),
                              fontSize: 17,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal),
                            ),
                          ),

                          

                          Expanded(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: <Widget>[
                                 Container(
                                  padding: EdgeInsets.only(left: 15, top: 4, bottom: 4),
                                  decoration: BoxDecoration(
                                      border: Border(
                                        left: BorderSide(color: Color(0xFFC5C2C7), width: 1.0)
                                      )
                                    ),
                                    child: _buildDialogItem(_selectedDialogCountry),

                                  // child: CountryPickerDropdown(
                                  //       initialValue: 'US',
                                  //       itemBuilder: _buildDropdownItem,
                                  //       onValuePicked: (Country country) {
                                  //         print("${country.name}");
                                  //         print("${country.iso3Code}");
                                  //         setState(() {
                                  //           countryName = "${country.iso3Code}";
                                  //         });
                                  //       },
                                  //     ),
                            ),
                            Icon(Icons.keyboard_arrow_down)
                               ],
                             ),
                          ),
                        ],
                      ),
                    ),
                  ),


                   ///////////////// Country Textfield  End///////////////


                     ///////////////// Country Textfield  Start///////////////
                  // Container(
                  //   //margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  //   child: TextField(
                  //     style: TextStyle(color: Color(0xFF000000)),
                  //     cursorColor: Color(0xFF9b9b9b),
                  //     //controller: nameController,
                  //     keyboardType: TextInputType.text,
                      
                  //     decoration: InputDecoration(
                  //       suffixIcon: GestureDetector(
                  //     onTap: () => print('on tap'),
                  //     child: Container(
                  //       color: Colors.green,
                  //       height: 20,
                  //       child: FittedBox(
                  //         alignment: Alignment.center,
                  //         fit: BoxFit.fitHeight,
                  //         child: CountryPickerDropdown(
                  //         initialValue: 'in',
                  //         itemBuilder: _buildDropdownItem,
                  //         onValuePicked: (Country country) {
                  //           print("${country.name}");
                  //         },
                  //       ),
                  //       ),
                  //     ),
                  //   ),
                  //       focusedBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.all(Radius.circular(3)),
                  //           borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.all(Radius.circular(3)),
                  //           borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  //       hintText: "USA",
                  //       hintStyle: TextStyle(
                  //           color: Color(0xFFDEDDDF),
                  //           fontSize: 17,
                  //           fontFamily: "Roboto",
                  //           fontWeight: FontWeight.normal),
                  //       contentPadding: EdgeInsets.only(left: 20, bottom: 21, top: 21),
                  //       fillColor: Color(0xFFFFFFFF),
                  //       filled: true,
                        
                  //     ),
                  //   ),
                  // ),

                  ///////////////// Country Textfield  End///////////////

                    ///////////////// Number Textfield  Start///////////////
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      style: TextStyle(color: Color(0xFF000000)),
                      cursorColor: Color(0xFF9b9b9b),
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      
                      decoration: InputDecoration(
                        prefixIcon: Container(
                            margin: EdgeInsets.only(right: 8, left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                       countryPhoneCode,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          color: Color(0XFF72706F),
                                          fontSize: 16.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.w900,
                                        ),
                                    ),
                              ],
                            ),),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                            color: Color(0xFFDEDDDF),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.normal),
                        contentPadding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        
                      ),
                    ),
                  ),

                  ///////////////// Number Textfield  End///////////////
                  ],
                ),
              ),

              /////////////// Top part End ////////////////
              
              
              
              /////////////// Button Start ////////////////
              
              Container(
                          margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              color: Color(0XFFFF9101),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: FlatButton(
                              onPressed: _continueButton,

                              child: Container(
                                //width: 150,
                                //color: Colors.grey,
                                child: Text(
                                   'CONTINUE',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'SourceSansPro',
                                      fontWeight: FontWeight.bold,
                                    ),
                                ),
                              ),
                              color: Colors.transparent,
                              //elevation: 4.0,
                              //splashColor: Colors.blueGrey,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0)),
                            )),
              
              /////////////// Button End ////////////////
            ],
          ),
        );
  }


  void _continueButton() async{

    if(phoneController.text.isEmpty){
        return _showMsg("Phone Number is empty");
      }
    var data = { 
        'phone' : phoneController.text,
    }; 
    print(data);
    Navigator.push( context, SlideLeftRoute(page: VerificationPage()));
  }

}
