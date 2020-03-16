import 'package:flutter/material.dart';

class SponsorShipCompletePage extends StatefulWidget {
  @override
  _SponsorShipCompletePageState createState() => _SponsorShipCompletePageState();
}

class _SponsorShipCompletePageState extends State<SponsorShipCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20,bottom: 30,top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            //////////////////// tOP portion ////////////
            Container(
              child: Column(
                children: <Widget>[



                  /////////////// text Start ////////////////
            
             Container(
      child: Text(
          "CONGRATULATION",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0XFFFF9101),
              fontFamily: "Poppins",
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
          ),

            /////////////// text End ////////////////
            

            
                ],
              ),
            ),

            ////////////////// tOP portion end/////////////
            


            ///////////////// Middle portion start ./////////////
            
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[


                   Container(
              child: Text(
                  "You received",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF5F5F5F),
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
            ),

                  /////////////// text Start ////////////////
            
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                  "550 Points",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFFFF9101),
                     // fontFamily: "SourceSansPro",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
            ),

            /////////////// text End ////////////////
            

             Container(
              child: Text(
                  "From your sponsors",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF5F5F5F),
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
            ),
                ],
              ),
            ),
            ///////////////// Middle portion end ./////////////
            


            ///////////////// Middle2 portion start ./////////////
            
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[


                   Container(
              child: Text(
                  "You trip is not yet completed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF5F5F5F),
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
            ),
            

             Container(
              child: Text(
                  "Do you want",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF5F5F5F),
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
            ),
            Container(
              child: Text(
                  "another activity?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF5F5F5F),
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
            ),
                ],
              ),
            ),
            ///////////////// Middle2 portion end ./////////////
            


            /////////////// Button Start ////////////////
      
      Container(
        //color: Colors.red,
        padding: EdgeInsets.only(left: 40, right: 40, top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            

            /////////////// Previous Button Start ////////////////
            
            Container(
                       
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(
                              color: Colors.black87
                            ),
                            color: Colors.white,
                          ),
                         // width: MediaQuery.of(context).size.width/4,
                          height: 50,
                          child: FlatButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },

                            child: Container(
                              //width: 150,
                              //color: Colors.grey,
                              child: Text(
                                 'NO',
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
                            color: Colors.transparent,
                            //elevation: 4.0,
                            //splashColor: Colors.blueGrey,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          )
                          ),

            /////////////// Previous Button End ////////////////
            

            
            /////////////// Next Button Start ////////////////
            Expanded(
                                  child: Container(
                         margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              color: Color(0XFFFF9101),
                            ),
                            //width: MediaQuery.of(context).size.width/3,
                            height: 50,
                            child: FlatButton(
                              onPressed: (){

                              },

                              child: Container(
                                //width: 150,
                                //color: Colors.grey,
                                child: Text(
                                   'ACCEPT IT',
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
            ),
              /////////////// Next Button End ////////////////
          ],
        ),
      ),
      
      /////////////// Button End ////////////////
            
            
          ],
        ),
      ),
    );
  }
}