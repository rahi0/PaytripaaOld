import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/AddPlatformPage/addPlatformPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            /////////////// Picture Start ////////////////
            
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/img/diet.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
            ),
            
            /////////////// Picture End ////////////////
            


            /////////////// Welcome start ////////////////
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
                       child: Text(
                          "Welcome To",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Helvetica",
                              fontSize: 28,
                              fontWeight: FontWeight.w400),
                        ),
                     ),
            /////////////// Welcome End ////////////////
            


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
            

            /////////////// You start ////////////////
            Container(
              margin: EdgeInsets.only(top: 35, bottom: 10),
                       child: Text(
                          "You are now ready for",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Helvetica",
                              fontSize: 24,
                              fontWeight: FontWeight.w300),
                        ),
                     ),
            /////////////// You End ////////////////
            

            /////////////// Free start ////////////////
            Container(
                       child: Text(
                          "Free Rides",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Helvetica",
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                     ),
            /////////////// Free End ////////////////
            
          ],
        ),
      ),


      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25, right: 15),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push( context, SlideLeftRoute(page: AddPlatformPage()));
          },
          backgroundColor: Color(0XFFFF9101),
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}