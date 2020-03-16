import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class ConfirmationPage extends StatefulWidget {
  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0XFFFF9101),
          elevation: 0,
          title: Text(
            'Confirmation',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              decoration: TextDecoration.none,
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: ConfirmationForm()
        );
  }
}



///////////////////////////////////////    Confirmation Form /////////////////////////////////////////////////////////////



class ConfirmationForm extends StatefulWidget {
  @override
  _ConfirmationFormState createState() => _ConfirmationFormState();
}

class _ConfirmationFormState extends State<ConfirmationForm> {

  String selectedPlatform = "";
  bool uberCheckBoxValue = false;
  bool lyftCheckBoxValue = false;
  bool agreementCheckBoxValue = false;

  bool uberHasError = false;
  String uberErrorMessage;
  TextEditingController uberPinController = TextEditingController();

  bool lyftHasError = false;
  String lyftErrorMessage;
  TextEditingController lyftPinController = TextEditingController();

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

  Container buttonContainer(Container conti, String title, Container code) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 20),
      // color: Colors.red,
      child: Row(
        children: <Widget>[
          ///////////// Card start /////////
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 15, top: 10, bottom: 10),
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[300], blurRadius: 16)
                  ]),
              child: Row(
                children: <Widget>[
                  ////////////// Checkbox Start ////////////

                  conti,

                  ////////////// Checkbox End ////////////
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ///////// Top Part Start /////////
                          Container(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: <Widget>[
                                ////////// Title Start/////////////
                                Container(
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 19.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'SourceSansPro',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                ////////// Title End/////////////

                                ////////// Number Start/////////////

                                code,
                                ////////// Number End/////////////
                              ],
                            ),
                          ),
                          ///////// Top Part End /////////
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          ///////////// Card end /////////
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 70),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            //////////////// Uber Button Start ////////////////
                            buttonContainer(
                                ////////////////
                                Container(
                                  // color: Colors.red,
                                  child: new Checkbox(
                                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: uberCheckBoxValue,
                                      activeColor: Color(0XFFFF9101),
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          uberCheckBoxValue = newValue;
                                        });
                                      }),
                                ),
                                ////////////////
                                "UBER",
                                ////////////////
                                ///////////////// Pin Textfield  Start///////////////
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: <Widget>[
                              PinCodeTextField(
                                  autofocus: false,
                                  controller: uberPinController,
                                  hideCharacter: false,
                                  highlight: true,
                                  highlightColor: Color(0XFFFF9101),
                                  defaultBorderColor: Color(0xFFC5C2C7),
                                  hasTextBorderColor: Color(0XFFFF9101),
                                  maxLength: 4,
                                  hasError: uberHasError,
                                  //maskCharacter: "*",
                                  pinBoxHeight:  MediaQuery.of(context).size.width/11,
                                  pinBoxWidth: MediaQuery.of(context).size.width/9,


                                  onTextChanged: (text) {
                                    setState(() {
                                      uberHasError = false;
                                    });
                                  },
                                  onDone: (text){
                                    print("DONE $text");
                                  },
                                  pinCodeTextFieldLayoutType: PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,
                                  wrapAlignment: WrapAlignment.start,
                                  pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                                  pinTextStyle: TextStyle(fontSize: 17.0, color: Color(0XFFFF9101),),
                                  pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                                ),
                                Visibility(
                                  child: Text(
                                    "Wrong PIN!",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  visible: uberHasError,
                                ),
                            ],
                          )
                        ),
                        ///////////////// Pin Textfield  End///////////////
                                ),
                            //////////////// Uber Button End ////////////////


                            //////////////// Lyft Button Start ////////////////
                            buttonContainer(
                                ////////////////
                                Container(
                                  // color: Colors.red,
                                  child: new Checkbox(
                                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: lyftCheckBoxValue,
                                      activeColor: Color(0XFFFF9101),
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          lyftCheckBoxValue = newValue;
                                        });
                                      }),
                                ),
                                ////////////////

                                "Lyft",
                                ////////////////
                                 ///////////////// Pin Textfield  Start///////////////
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: <Widget>[
                              PinCodeTextField(
                                  autofocus: false,
                                  controller: lyftPinController,
                                  hideCharacter: false,
                                  highlight: true,
                                  highlightColor: Color(0XFFFF9101),
                                  defaultBorderColor: Color(0xFFC5C2C7),
                                  hasTextBorderColor: Color(0XFFFF9101),
                                  maxLength: 4,
                                  hasError: lyftHasError,
                                  //maskCharacter: "*",
                                  pinBoxHeight:  MediaQuery.of(context).size.width/11,
                                  pinBoxWidth: MediaQuery.of(context).size.width/9,


                                  onTextChanged: (text) {
                                    setState(() {
                                      lyftHasError = false;
                                    });
                                  },
                                  onDone: (text){
                                    print("DONE $text");
                                  },
                                  pinCodeTextFieldLayoutType: PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,
                                  wrapAlignment: WrapAlignment.start,
                                  pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                                  pinTextStyle: TextStyle(fontSize: 17.0, color: Color(0XFFFF9101),),
                                  pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                                ),
                                Visibility(
                                  child: Text(
                                    "Wrong PIN!",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  visible: lyftHasError,
                                ),
                            ],
                          )
                        ),
                        ///////////////// Pin Textfield  End///////////////
                                ////////////////
                                ),
                            //////////////// Lyft Button End ////////////////
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              ///////////////// Add Platform Button Start////////////
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    /////////////// Next Button Start ////////////////

                    Container(
                        margin: EdgeInsets.only(left: 15, ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0XFFFF9101),
                        ),
                        width: MediaQuery.of(context).size.width / 3 + 20,
                        height: 50,
                        child: FlatButton(
                          onPressed: _continueButton,

                          child: Container(
                            //width: 150,
                            //color: Colors.grey,
                            child: Text(
                              'CONFIRM',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          color: Colors.transparent,
                          //elevation: 4.0,
                          //splashColor: Colors.blueGrey,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                        )),

                    /////////////// Next Button End ////////////////
                  ],
                ),
              )
              ///////////////// Add Platform Button End////////////
            ],
          ),
        );
  }

  void _continueButton() async{

    setState(() {
         this.uberHasError = true;
             });
    if(uberPinController.text.isEmpty){
        return _showMsg("PIN number is empty");
      }
    var data = { 
        'Uber' : uberPinController.text,
    }; 
    print(data);
   // Navigator.push( context, SlideLeftRoute(page: TermsPage()));
  }
}