import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[


            SizedBox(height: 20,),
            /////////////// Logo Start ////////////////
            
            Container(
              child: Column(
                children: <Widget>[
                  Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                       // height: 48,
                       //width: 39,
                        child: Icon(Icons.location_on, size: 50,color: Color(0XFFFF9101),),
                        // decoration: BoxDecoration(
                        //   color: Colors.red,
                        //             image: DecorationImage(
                        //               image: AssetImage('assets/img/hometop.png'),
                        //               fit: BoxFit.fill,
                        //             ),
                        //           ),
                      ),


                  Container(
                    child: Text(
                        "PayTrippa",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFFF9101),
                            fontFamily: "Poppins",
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                  ),
                ],
              ),
            ),

            /////////////// Logo End ////////////////
            

            /////////////// Picture Start ////////////////
            
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Text(
                  "ENJOY THE REST OF YOUR LIFE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
            ),
            
            /////////////// Picture End ////////////////
                ],
              ),
            ),
            
            
            /////////////// Button Start ////////////////
            
            Container(
                        //margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            color: Color(0XFFFF9101),
                          ),
                          width: MediaQuery.of(context).size.width/3 +20,
                          height: 50,
                          child: FlatButton(
                            onPressed: (){
                             Navigator.pop(context);

                            },

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
            
            /////////////// Button End ////////////////
          ],
        ),
      ),
    );
  }
}