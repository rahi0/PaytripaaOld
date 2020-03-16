import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/QuestionPage/questionPageTwo.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class QuestionPageOne extends StatefulWidget {
  @override
  _QuestionPageOneState createState() => _QuestionPageOneState();
}

class _QuestionPageOneState extends State<QuestionPageOne> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
                                'Questions',
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
      body: QuestionFormOne(),
    );
  }
}




class QuestionFormOne extends StatefulWidget {
  @override
  _QuestionFormOneState createState() => _QuestionFormOneState();
}

class _QuestionFormOneState extends State<QuestionFormOne> {

   ////////Radio
  var _queradioValue1 = -1;
  String _ans = "";

  void _queRadioValueChange1(int value) {
    print(value);
    setState(() {
      _queradioValue1 = value;

      switch (_queradioValue1) {
        case 0:
          _ans = 'option 1';
          break;
        case 1:
          _ans = 'option 2';
          break;
          case 2:
          _ans = 'option 3';
          break;
          case 3:
          _ans = 'option 4';
          break;
      }
    });
  }
  
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
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[

                //////////////// Indicator Start///////////////
                
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 8,
                        width: MediaQuery.of(context).size.width/8,
                        decoration: BoxDecoration(
                          color: Color(0XFFFF9101),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      
                      Container(
                        margin: EdgeInsets.only(left: 5,right: 5),
                        height: 8,
                        width: MediaQuery.of(context).size.width/8,
                        decoration: BoxDecoration(
                          color: Color(0XFFEEE1CF),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),

                      Container(
                        height: 8,
                        width: MediaQuery.of(context).size.width/8,
                        decoration: BoxDecoration(
                          color: Color(0XFFEEE1CF),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ],
                  ),
                ),
                //////////////// Indicator End/////////////////
                



                //////////////// Education Level DropDown Start/////////////////
                Container(
                  margin: EdgeInsets.only(top: 50),
                        //color: Colors.red,
                        child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                            "1. Overall, how satisfied are you with Stop & Shop?",
                            style: TextStyle(
                                color: Color(0XFF414042),
                                fontFamily: "Helvetica",
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                      ),
                          
                          ////////  radio Button /////////

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                         ////// Option 1//////
                         Container(
                         //  color: Colors.red,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Radio(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              value: 0,
                                              groupValue: _queradioValue1,
                                              onChanged: _queRadioValueChange1,
                                              activeColor: Color(0XFFFF9101),
                                            ),
                                            Expanded(
                                                                                          child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 5, left: 3),
                                                child: Text(
                                                  'Extremely disassisfied ',
                                                  // textDirection: TextDirection.ltr,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 19.0,
                                                    //decoration: TextDecoration.none,
                                                    fontFamily: 'SourceSansPro',
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                         ),
                         ////// Option 1 end//////
                         


                         ////// Option 2//////
                         Container(
                         //  color: Colors.red,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Radio(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              value: 1,
                                              groupValue: _queradioValue1,
                                              onChanged: _queRadioValueChange1,
                                              activeColor: Color(0XFFFF9101),
                                            ),
                                            Expanded(
                                                                                          child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 5, left: 3),
                                                child: Text(
                                                  'Neither satisfied nor disassisfied',
                                                  // textDirection: TextDirection.ltr,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 19.0,
                                                    //decoration: TextDecoration.none,
                                                    fontFamily: 'SourceSansPro',
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                         ),
                         ////// Option 2 end//////
                         
                         ////// Option 3//////
                         Container(
                         //  color: Colors.red,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Radio(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              value: 2,
                                              groupValue: _queradioValue1,
                                              onChanged: _queRadioValueChange1,
                                              activeColor: Color(0XFFFF9101),
                                            ),
                                            Expanded(
                                                                                          child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 5, left: 3),
                                                child: Text(
                                                  'Somewhat satisfied ',
                                                  // textDirection: TextDirection.ltr,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 19.0,
                                                    //decoration: TextDecoration.none,
                                                    fontFamily: 'SourceSansPro',
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                         ),
                         ////// Option 3 end//////
                         


                         ////// Option 4//////
                         Container(
                         //  color: Colors.red,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Radio(
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                              value: 3,
                                              groupValue: _queradioValue1,
                                              onChanged: _queRadioValueChange1,
                                              activeColor: Color(0XFFFF9101),
                                            ),
                                            Expanded(
                                                                                          child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 5, left: 3),
                                                child: Text(
                                                  'Extremely satisfied ',
                                                  // textDirection: TextDirection.ltr,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 19.0,
                                                    //decoration: TextDecoration.none,
                                                    fontFamily: 'SourceSansPro',
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                         )
                         ////// Option 4 end//////
                        ],
                      )
                    ),

                                  ],
                                ),
                      ),
                //////////////// Education Level DropDown End/////////////////
              ],
            ),
          ),




          /////////////// Button Start ////////////////
        
        Container(
           margin: EdgeInsets.only( top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                         
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              color: Color(0XFFFF9101),
                            ),
                            width: MediaQuery.of(context).size.width/3,
                            height: 50,
                            child: FlatButton(
                              onPressed: _nextButton,

                              child: Container(
                                //width: 150,
                                //color: Colors.grey,
                                child: Text(
                                   'NEXT',
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
            ],
          ),
        ),
        
        /////////////// Button End ////////////////
        ],
      ),
    );
  }


  void _nextButton() async{

    //  if(incomeController.text.isEmpty){
    //     return _showMsg("Household Income is empty");
    //   }
    // var data = { 
    //     'firstName' : incomeController.text,
    //     'lastname' : sizeController.text,
    // }; 
    // print(data);
    Navigator.push( context, SlideLeftRoute(page: QuestionPageTwo()));
  }
}