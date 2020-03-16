import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/EditProfileSteps/EditProfileStepOne.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class AddPlatformForm extends StatefulWidget {
  @override
  _AddPlatformFormState createState() => _AddPlatformFormState();
}

class _AddPlatformFormState extends State<AddPlatformForm> {
  

  bool hasError = false;
  String errorMessage;


  //////
  bool isOpen = false;
  bool isUberSelected = false;
  bool isLyftSelected = false;
  bool isGrabSelected = false;

  String countryName = "US";
  String countryPhoneCode = "+1";
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByIsoCode('US');

  
  TextEditingController phoneController = TextEditingController();
  TextEditingController pinController = TextEditingController();

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
    return Stack(
      children: <Widget>[

        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.only(bottom: 60,),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    /////////////// Top Part Start ////////////////
                    
                    Container(
                    //  color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 25, right: 25,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                                  margin: EdgeInsets.only(bottom: 25,top: 10),
                                  child: Text(
                                      "Add your Ride Sharing Platform",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "SourceSansPro",
                                          fontSize: 22,
                                          fontWeight: FontWeight.normal),
                                    ),
                                ),



                                ///////////////Button List Of Rides Start //////////////
                                
                                Container(
                                  height: 94,
                                  //color: Colors.red,
                                  padding: EdgeInsets.only(top: 2,bottom: 2),
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[

                                      SizedBox(width: 20,),

                                      //////////////// Uber Button Start///////////////
                                      GestureDetector(
                                        onTap: (){
                                          if(isUberSelected == false){
                                            setState(() {
                                              isUberSelected = true;
                                              isLyftSelected = false ;
                                              isGrabSelected = false;
                                            });
                                          }
                                          else{
                                            setState(() {
                                              isUberSelected = false;
                                            });
                                          }
                                        },
                                          child: Container(
                                          margin: EdgeInsets.only(right: 20),
                                          padding: EdgeInsets.only(top: 2, right: 2),
                                          alignment: Alignment.topRight,
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('assets/img/LiveChat.png')),
                                            color: Colors.blue
                                          ),
                                          child: isUberSelected ? Icon(Icons.check_circle, color: Colors.white,) : Container(),
                                        ),
                                      ),

                                      //////////////// Uber Button End//////////////

                                      //////////////// Lyft Button Start///////////////
                                      GestureDetector(
                                        onTap: (){
                                          if(isLyftSelected == false){
                                            setState(() {
                                              isUberSelected = false;
                                              isLyftSelected = true ;
                                              isGrabSelected = false;
                                            });
                                          }
                                          else{
                                            setState(() {
                                              isLyftSelected = false;
                                            });
                                          }
                                        },
                                          child: Container(
                                          margin: EdgeInsets.only(right: 20),
                                          padding: EdgeInsets.only(top: 2, right: 2),
                                          alignment: Alignment.topRight,
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('assets/img/LiveChat.png')),
                                            color: Colors.blue
                                          ),
                                          child: isLyftSelected ? Icon(Icons.check_circle, color: Colors.white,) : Container(),
                                        ),
                                      ),

                                      //////////////// Lyft Button End//////////////

                                       //////////////// Grab Button Start///////////////
                                      GestureDetector(
                                        onTap: (){
                                          if(isGrabSelected == false){
                                            setState(() {
                                              isUberSelected = false;
                                              isLyftSelected = false ;
                                              isGrabSelected = true;
                                            });
                                          }
                                          else{
                                            setState(() {
                                              isGrabSelected = false;
                                            });
                                          }
                                        },
                                          child: Container(
                                          margin: EdgeInsets.only(right: 20),
                                          padding: EdgeInsets.only(top: 2, right: 2),
                                          alignment: Alignment.topRight,
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            image: DecorationImage(image: AssetImage('assets/img/LiveChat.png')),
                                            color: Colors.blue
                                          ),
                                          child: isGrabSelected ? Icon(Icons.check_circle, color: Colors.white,) : Container(),
                                        ),
                                      ),

                                      //////////////// Grab Button End//////////////

                                      
                                      

                                    ],
                                  ),
                                ),

                                ///////////////Button List Of Rides End //////////////


                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 25,top: 10),
                                  child: Text(
                                      "Enter your mobile Number",
                                      style: TextStyle(
                                          color: Color(0XFF414042),
                                          fontFamily: "SourceSansPro",
                                          fontSize: 18,
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
                              color: Colors.grey,
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
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                               ],
                             ),
                          ),
                        ],
                      ),
                    ),
                  ),


                   ///////////////// Country Textfield  End///////////////
                   


                   ///////////////// Number Textfield  Start///////////////
                  Container(
                    margin: EdgeInsets.only(top: 10,),
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
                                Container(
                                  padding: EdgeInsets.only(bottom: 3),
                                  child: Text(
                                         countryPhoneCode,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            color: Color(0XFF72706F),
                                            fontSize: 16.0,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'SourceSansPro',
                                            fontWeight: FontWeight.normal,
                                          ),
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


                        Container(
                          //color: Colors.red,
                          margin: EdgeInsets.only(top: 50),
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Container(
                                  child: Text(
                                            "Confirmation Code",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0XFF675B54),
                                                fontFamily: "SourceSansPro",
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal),
                                          ),
                                      ),

                              ///////////////// Pin Textfield  Start///////////////
                              Container(
                                margin: EdgeInsets.only(top: 15),
                                
                                child: Column(
                                  children: <Widget>[
                                    PinCodeTextField(
                                        autofocus: false,
                                        controller: pinController,
                                        hideCharacter: false,
                                        highlight: true,
                                        highlightColor: Color(0XFFFF9101),
                                        defaultBorderColor: Color(0xFFC5C2C7),
                                        hasTextBorderColor: Colors.green,
                                        maxLength: 4,
                                        hasError: hasError,
                                        //maskCharacter: "*",
                                        pinBoxHeight:  MediaQuery.of(context).size.width/7,
                                        pinBoxWidth: MediaQuery.of(context).size.width/6,


                                        onTextChanged: (text) {
                                          setState(() {
                                            hasError = false;
                                          });
                                        },
                                        onDone: (text){
                                          print("DONE $text");
                                        },
                                        pinCodeTextFieldLayoutType: PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,
                                        wrapAlignment: WrapAlignment.start,
                                        pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                                        pinTextStyle: TextStyle(fontSize: 30.0),
                                        pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                                        pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                                      ),
                                      Visibility(
                                        child: Text(
                                          "Wrong PIN!",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        visible: hasError,
                                      ),
                                  ],
                                )
                              ),
                              ///////////////// Pin Textfield  End///////////////
                            ],
                          ),
                        ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
        ),




         /////////////// REQUEST Button Start ////////////////
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    // alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Color(0XFFFF9101),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: FlatButton(
                      onPressed: _submitButton, 
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 25, right: 5
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            SizedBox(width: 5,),
                            Container(
                              child: Text(
                                'REQUEST',
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

                            Icon(Icons.arrow_forward, color: Colors.white)
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      //elevation: 4.0,
                      //splashColor: Colors.blueGrey,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    )),
              ],
            ),
          ),

          /////////////// REQUEST Button End ////////////////
      ],
    );
  }


  void _submitButton() async{

    // setState(() {
    //      this.hasError = true;
    //          });
     if(phoneController.text.isEmpty){
        return _showMsg("Phone Number is empty");
      }
    else if(pinController.text.isEmpty){
        return _showMsg("PIN number is empty");
      }
    var data = { 
        'phone' : phoneController.text,
        'phone' : pinController.text,
    }; 
    print(data);
    Navigator.push( context, SlideLeftRoute(page: EditProfileStepOne()));
  }
}