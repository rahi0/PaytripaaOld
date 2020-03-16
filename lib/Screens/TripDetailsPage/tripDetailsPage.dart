import 'package:flutter/material.dart';
import 'package:pay_trippa/Widgets/TripDetailsPageWidgets/sponsorShipExpandedCards.dart';

class TripDetailsPage extends StatefulWidget {
  @override
  _TripDetailsPageState createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9101),
        elevation: 0,
        title: Text(
                                'Trip Details',
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
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 16
                                )
                            ]
                          ),
                          child: Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[

                              /////////////Left side/////////
                              Expanded(
                                 child: Container(
                                   //color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ///////////////
                                      Container(
                                      child:  Text(
                                        "4th December,18",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    //////////////////
                                    
                                    ///////// time ///////////
                                    Container(
                                      margin: EdgeInsets.only(top: 5, bottom: 5),
                                      child:  Text(
                                        "09:34 AM  14 miles - 23m 55s",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    ///////// time ///////////
                                    

                                  ////////// earn /////////////
                                  Container(
                                    child: Row(
                            children: <Widget>[

                              ///////////// TP Start //////////////
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "Used ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "- \$32",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ///////////// TP End //////////////
                              
                              ///////////// Others Start //////////////
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "Earned ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "- 2.87",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ///////////// Others End //////////////
                            ],
                          ),
                                  )  
                                  ////////// earn /////////////  
                                    ],
                                  ),
                                ),
                              ),
                              /////////////Left side/////////
                              


                              /////////////right side/////////
                              Container(
                               // color: Colors.blue,
                                child: Column(
                                  children: <Widget>[
                                    ///////// Doller ////////
                                    Container(
                                      child:  Text(
                                        "\$450",
                                        style: TextStyle(
                                          color: Color(0XFFFF9101),
                                          fontSize: 20.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    ///////// Doller ////////
                                    

                                    ///////// Item ////////
                                    Container(
                                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                            margin: EdgeInsets.only(top: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child:  Text(
                                              "UBER",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                    ///////// Item ////////
                                  ],
                                ),
                              )

                              /////////////right side/////////
                            ],
                          ),
                        ),
                      )
                      ///////////// Card end /////////
                    ],
                  ),
                ),

                //////////////// Top Portion End ////////////////
                

                //////////////// Payment Portion Start ////////////////
                
                Container(
                  margin: EdgeInsets.only(top: 20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ////////// Payment title start////////
                      Container(
                        child:  Text(
                                        "Payment",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 22.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                      ),
                      ////////// Payment title end /////////
                      
                      ////////// Payment body start////////
                      Container(
                           width: MediaQuery.of(context).size.width,
                           margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              ///////////// TP Start //////////////
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "TP ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "- \$32",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ///////////// TP End //////////////
                              
                              ///////////// Others Start //////////////
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child:  Text(
                                        "Others Type ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      child:  Text(
                                        "- 2.87",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ///////////// Others End //////////////
                              
                              ///////////// Paid Start //////////////
                              Container(
                                child:  Text(
                                  "Applied",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 17.0,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              ///////////// Paid End //////////////
                            ],
                          ),
                        ),
                      ////////// Payment body end /////////
                    ],
                  ),
                ),
                //////////////// Payment Portion Start ////////////////

                


                //////////////// Sponsorship Portion Start ////////////////
                
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ////////// Payment title start////////
                      Container(
                        child:  Text(
                                        "Sponsorship",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 22.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                      ),
                      ////////// Sponsorship title end /////////
                      
                      ////////// Sponsorship body start////////
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            SponsorshipCard(),
                            SponsorshipCard(),
                            SponsorshipCard(),
                            

                          ],
                        ),
                      ),
                      ////////// Sponsorship body end /////////
                    ],
                  ),
                ),
                //////////////// Sponsorship Portion Start ////////////////
              
              ],
            ),
          ),
        ),
      )
      
    );
  }
}