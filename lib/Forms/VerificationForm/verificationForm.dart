import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/SignInPage/signInPage.dart';
import 'package:pay_trippa/Screens/TermsPage/termsPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerificationForm extends StatefulWidget {
  @override
  _VerificationFormState createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {

  
  TextEditingController pinController = TextEditingController();

  bool hasError = false;
  String errorMessage;

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
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal),
                              ),
                          ),

                          Container(
                            child: Text(
                                "We have sent a code by SMS to phone number",
                               // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              ),
                          ),


                          Container(
                            margin: EdgeInsets.only(top: 15, bottom: 45),
                            child: Row(
                              children: <Widget>[
                                Container(
                            child: Text(
                                      "+10302038463",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0XFF414042),
                                          fontFamily: "SourceSansPro",
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal),
                                    ),
                                ),


                                /////////////// Wrong Number Button Start ////////////
                                 GestureDetector(
                                   onTap: (){
                                     Navigator.pop( context);
                                   },
                                   child: Container(
                                     margin: EdgeInsets.only(left: 10),
                            child: Text(
                                        "Wrong number?",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: "SourceSansPro",
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal),
                                      ),
                                ),
                                 ),

                                /////////////// Wrong Number Button End ////////////
                                

                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    /////////////// Top part End ////////////////


                  Container(
                    //color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[

                        Container(
                            child: Text(
                                      "4 Digit Code",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "SourceSansPro",
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                ),

                        ///////////////// Pin Textfield  Start///////////////
                        Container(
                          margin: EdgeInsets.only(top: 20),
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

              
              
              
              
              /////////////// Button Section Start ////////////////
              
              Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                child: Column(
                  children: <Widget>[

                    /////////////// Resend Button Start ////////////////
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                                      "Resend Code",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                ),

                                /////////////// Resend Button End ////////////////
                                

                                /////////////// Submit Button Start ////////////////
                    Container(
                                
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    color: Color(0XFFFF9101),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: FlatButton(
                                    onPressed: _submitButton,

                                    child: Container(
                                      //width: 150,
                                      //color: Colors.grey,
                                      child: Text(
                                         'SUBMIT',
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


                                  /////////////// SUBMIT Button End ////////////////
                  ],
                ),
              ),
              
              /////////////// Button Section End ////////////////
            ],
          ),
        );
  }


  void _submitButton() async{

    // setState(() {
    //      this.hasError = true;
    //          });
    if(pinController.text.isEmpty){
        return _showMsg("PIN number is empty");
      }
    var data = { 
        'phone' : pinController.text,
    }; 
    print(data);
    Navigator.push( context, SlideLeftRoute(page: TermsPage()));
  }
}