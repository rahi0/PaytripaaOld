import 'package:flutter/material.dart';

class DateActivities extends StatefulWidget {
  @override
  _DateActivitiesState createState() => _DateActivitiesState();
}

class _DateActivitiesState extends State<DateActivities> {

  Container buttonContainer() {
    return Container(
                                      //color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    ///////////// Earned Start //////////////
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 3),
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
                                              "Earned",
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
                                    ///////////// Earned End //////////////
                                    
                                    ///////////// Used Start //////////////
                                     Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 3),
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
                                              "Used",
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
                                    ///////////// Used End //////////////
                                    
                                    ///////////// Paid Start //////////////
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                            margin: EdgeInsets.only(bottom: 3),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child:  Text(
                                              "Uber",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            child:  Text(
                                              "09:34 AM",
                                              style: TextStyle(
                                                color: Colors.black87,
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
                                    ///////////// Paid End //////////////
                                  ],
                                ),
                              );
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 20),
                 // color: Colors.red,
                  child: Row(
                    children: <Widget>[

                      ///////////// Card start /////////
                      Expanded(
                         child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "December 4th, 2018",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "450 Points",
                                        style: TextStyle(
                                          color: Color(0XFFFF9101),
                                          fontSize: 18.0,
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
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                height: 0.5,
                                color: Colors.grey[400],
                              ),
                              ///////// Divider End /////////
                              

                              ///////// Bottom Part Start /////////
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    buttonContainer(),

                                    buttonContainer(),
                                  ],
                                ),
                              )
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
}