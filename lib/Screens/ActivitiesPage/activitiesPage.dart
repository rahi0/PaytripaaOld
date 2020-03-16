import 'package:flutter/material.dart';
import 'package:pay_trippa/Widgets/ActivitiesPageWidgets/dateActivities.dart';

class ActivitiesPage extends StatefulWidget {
  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  String selectedPlatform = "";


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9101),
        elevation: 0,
        title: Text(
                                'Activities',
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
        
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 70),
            child: Column(
              children: <Widget>[


                //////////////// Top Portion Start ////////////////
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 20),
                 // color: Colors.red,
                  child: Row(
                    children: <Widget>[

                      ///////////// Card start /////////
                      Expanded(
                         child: Container(
                           width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 16
                                )
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              ///////////// Activities Start //////////////
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "320",
                                        style: TextStyle(
                                          color: Color(0XFFFF6D00),
                                          fontSize: 24.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "Total Earned",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.0,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "170",
                                        style: TextStyle(
                                          color: Color(0XFFFF6D00),
                                          fontSize: 24.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "Used",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.0,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "100",
                                        style: TextStyle(
                                          color: Color(0XFFFF6D00),
                                          fontSize: 24.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "Balance",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.0,
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
                      )
                      ///////////// Card end /////////
                    ],
                  ),
                ),

                //////////////// Top Portion End ////////////////
                


                //////////////// Bottom Portion Start ////////////////
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DateActivities(),
                      DateActivities(),
                    ],
                  ),
                )
                //////////////// Bottom Portion End ////////////////
              
              ],
            ),
          ),
        ),
      )
      
    );
  }
}