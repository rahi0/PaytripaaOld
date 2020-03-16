import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/SelectAddPlatformPage/selectAddPlatformPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class PlatformPage extends StatefulWidget {
  @override
  _PlatformPageState createState() => _PlatformPageState();
}

class _PlatformPageState extends State<PlatformPage> {

String selectedPlatform = "";


  Container buttonContainer(Icon icons, String title) {
    return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 20),
                 // color: Colors.red,
                  child: Row(
                    children: <Widget>[

                      Container(
                        child: icons,
                      ),

                      ///////////// Card start /////////
                      Expanded(
                         child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 16
                                )
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              ///////// Top Part Start /////////
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
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

                                    Container(
                                      child:  Text(
                                        "Since 4th Oct.18",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ///////// Top Part End /////////
                              
                              ///////// Divider Start /////////
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 8),
                                height: 0.5,
                                color: Colors.grey[400],
                              ),
                              ///////// Divider End /////////
                              

                              ///////// Bottom Part Start /////////
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    ///////////// Activities Start //////////////
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child:  Text(
                                              "32",
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 22.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            child:  Text(
                                              "Activities",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ///////////// Activities End //////////////
                                    
                                    ///////////// Points Start //////////////
                                     Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child:  Text(
                                              "127",
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 22.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            child:  Text(
                                              "Points",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ///////////// Points End //////////////
                                    
                                    ///////////// Paid Start //////////////
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child:  Text(
                                              "\$450",
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 22.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            child:  Text(
                                              "Paid",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ///////////// Paid End //////////////
                                  ],
                                ),
                              ),
                              ///////// Bottom Part End /////////
                              

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9101),
        elevation: 0,
        title: Text(
                                'Platforms',
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
      body: Container(
        
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 70),
                child: Column(
                  children: <Widget>[


                    //////////////// Uber Button Start ////////////////
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedPlatform = "Uber";
                        });
                      },
                      child: buttonContainer( 
                        selectedPlatform == "Uber" ? Icon(Icons.radio_button_checked, size: 30, color: Color(0XFFFF9101),)
                        : Icon(Icons.radio_button_unchecked, size: 30, color: Colors.black54,),
                       "UBER")
                      ),
                    //////////////// Uber Button End ////////////////
                    


                    //////////////// Lyft Button Start ////////////////
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedPlatform = "Lyft";
                        });
                      },
                      child: buttonContainer(
                        selectedPlatform == "Lyft" ? Icon(Icons.radio_button_checked, size: 30, color: Color(0XFFFF9101),)
                        : Icon(Icons.radio_button_unchecked, size: 30, color: Colors.black54,),
                       "Lyft")
                      ),
                    //////////////// Lyft Button End ////////////////
                  
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
                             Navigator.push( context, SlideLeftRoute(page: SelectAddPlatformPage()));

                            },

                            child: Container(
                              //width: 150,
                              //color: Colors.grey,
                              child: Text(
                                 'ADD PLATFORM',
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
            
            /////////////// Button End ////////////////
                ],
              ),
            )
            ///////////////// Add Platform Button End////////////
          ],
        ),
      )
      
    );
  }
}