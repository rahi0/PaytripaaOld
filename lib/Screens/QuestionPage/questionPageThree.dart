import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/HomePage/homePage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class QuestionPageThree extends StatefulWidget {
  @override
  _QuestionPageThreeState createState() => _QuestionPageThreeState();
}

class _QuestionPageThreeState extends State<QuestionPageThree> {

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
      body: QuestionFormThree(),
    );
  }
}




class QuestionFormThree extends StatefulWidget {
  @override
  _QuestionFormThreeState createState() => _QuestionFormThreeState();
}

class _QuestionFormThreeState extends State<QuestionFormThree> {

   TextEditingController msgController = TextEditingController();
  
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
    return Stack(
      children: <Widget>[


        SingleChildScrollView(
              child: Container(
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
                                color: Color(0XFFFF9101),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),

                            Container(
                              height: 8,
                              width: MediaQuery.of(context).size.width/8,
                              decoration: BoxDecoration(
                                color: Color(0XFFFF9101),
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
                                  "3. What will you change about Stop & Shop service?",
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
                            //  crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                               ////// Text start//////
                               Container(
                               //  color: Colors.red,
                                 child: Text(
                                             'Verizone Wireless offers mobile phone services through a variety of devices',
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                                color: Color(0XFF414042),
                                                fontSize: 20.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.normal,
                                              ),
                                          ),
                               ),
                               ////// Text end//////
                               


                               ////// Textfield //////
                               Container(
                    margin: EdgeInsets.only(top: 10,),
                    child: TextField(
                      style: TextStyle(color: Color(0xFF000000)),
                      cursorColor: Color(0xFF9b9b9b),
                      controller: msgController,
                      keyboardType: TextInputType.text,
                      
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                        hintText: "Answer",
                        hintStyle: TextStyle(
                            color: Color(0xFFDEDDDF),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.normal),
                        contentPadding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        
                      ),
                    ),
                      ),
                               ////// Textfield end//////
                               
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




                
              ],
            ),
          ),
        ),


        /////////////// Button Start ////////////////
              
              Container(
                //color: Colors.red,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    

                    /////////////// Previous Button Start ////////////////
                    
                    Container(
                               
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    color: Colors.white,
                                  ),
                                  //width: MediaQuery.of(context).size.width/3,
                                  height: 50,
                                  child: FlatButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },

                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Icon(Icons.keyboard_arrow_left)),

                                        Container(
                                          //width: 150,
                                          //color: Colors.grey,
                                          child: Text(
                                             'Previous',
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                                color: Color(0XFF414042),
                                                fontSize: 20.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.bold,
                                              ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    color: Colors.transparent,
                                    //elevation: 4.0,
                                    //splashColor: Colors.blueGrey,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                  )
                                  ),

                    /////////////// Previous Button End ////////////////
                    

                    
                    /////////////// Next Button Start ////////////////
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
                                  )
                                  ),
                      /////////////// Next Button End ////////////////
                  ],
                ),
              ),
              
              /////////////// Button End ////////////////
      ],
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
    Navigator.push( context, SlideLeftRoute(page: HomePage()));
  }
}