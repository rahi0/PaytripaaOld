import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/SignInPage/signInPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /////////////// Logo Start ////////////////
            
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
                        "Pay",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFFF9101),
                            fontFamily: "Poppins",
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                  ),
                  Container(
                    child: Text(
                        "Trippa",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFF414042),
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
              height: MediaQuery.of(context).size.height/3 -10,
              decoration: BoxDecoration(
                color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/img/intro3.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
            ),
            
            /////////////// Picture End ////////////////
            
            
            /////////////// Button Start ////////////////
            
            Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            color: Color(0XFFFF9101),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: FlatButton(
                            onPressed: (){
                              Navigator.push( context, SlideLeftRoute(page: SignInPage()));

                            },

                            child: Container(
                              //width: 150,
                              //color: Colors.grey,
                              child: Text(
                                 'REGISTER WITH PHONE NUMBER',
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