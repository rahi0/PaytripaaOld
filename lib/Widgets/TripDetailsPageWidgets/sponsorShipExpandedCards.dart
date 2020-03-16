import 'package:flutter/material.dart';

class SponsorshipCard extends StatefulWidget {
  @override
  _SponsorshipCardState createState() => _SponsorshipCardState();
}

class _SponsorshipCardState extends State<SponsorshipCard> {

  bool isOpen = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: isOpen ? 15 : 8),
      child: GestureDetector(
        onTap: (){
          if(isOpen == false){
            setState(() {
              isOpen = true;
            });
          }
          else{
            setState(() {
              isOpen = false;
            });
          }
        },
        child:Container(
                           width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 10
                                )
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //////////////////// Fixed Part start ////////////////
                              
                              Container(
                                child: Row(
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
                                        "Varizon",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 21.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    //////////////////
                                    
                                    ///////// Ammount ///////////
                                    Container(
                                      margin: EdgeInsets.only(top: 5, bottom: 10),
                                      child:  Text(
                                        "\$25.00",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SourceSansPro',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    ///////// Ammount ///////////
                                    

                                  ////////// btom /////////////
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 10),
                                                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                                decoration: BoxDecoration(
                                                  color: Color(0XFFFFF0E5), 
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                child:  Text(
                                                  "Product Review",
                                                  style: TextStyle(
                                                    color: Color(0XFFFF9101),
                                                    fontSize: 16.0,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'SourceSansPro',
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),

                                        Container(
                                          child:  Text(
                                            "4 min 30 sec",
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
                                  )  
                                  ////////// btom /////////////  
                                    ],
                                  ),
                                ),
                              ),
                              /////////////Left side/////////
                              


                              /////////////right side/////////
                              Container(
                               // color: Colors.blue,
                                child: Icon(Icons.keyboard_arrow_down, size: 40)
                              )

                              /////////////right side/////////
                            ],
                          ),
                              ),
                              //////////////////// Fixed Part End ////////////////
                              

                              //////////////////// Hidden Part Start ////////////////
                           isOpen == false ? Container() : Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    /////
                                    Container(
                                      margin: EdgeInsets.only(top: 25, bottom: 15),
                                      width: MediaQuery.of(context).size.width,
                                      height: 1.5,
                                      color: Colors.grey[200],
                                    ),
                                    ////////
                                    

                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          ////////// SP ID start /////////////
                                          Container(
                                            child: Text(
                                                "SP ID: MN74839353634548",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'SourceSansPro',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                          ),
                                          ////////// SP ID end /////////////
                                          


                                          ////////// Logo & adress start /////////////
                                          Container(
                                            margin: EdgeInsets.only(top: 22,  bottom: 22),
                                            child: Row(
                                              children: <Widget>[

                                                ///////////// Logo ///////////
                                                Container(
                                                  margin: EdgeInsets.only(right: 15),
                                                  child: ClipOval(
                                                      child: Image.asset(
                                                        'assets/img/lyft.png',
                                                        height: 42,
                                                        width: 42,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                ),
                                                ///////////// Logo ///////////
                                                

                                                ///////////// Adress ///////////
                                                Expanded(
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                  margin: EdgeInsets.only(bottom: 5),
                                                    child: Text(
                                                        "Lovetric Inc.",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 19.0,
                                                          decoration: TextDecoration.none,
                                                          fontFamily: 'SourceSansPro',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                  ),


                                                  Container(
                                                    child: Text(
                                                        "www.democompanyname.com",
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 15.0,
                                                          decoration: TextDecoration.none,
                                                          fontFamily: 'SourceSansPro',
                                                          fontWeight: FontWeight.normal,
                                                        ),
                                                      ),
                                                  ),
                                                      ],
                                                    ),
                                                  )
                                                  ),
                                                ///////////// Adress ///////////
                                              ],
                                            ),
                                          ),
                                          ////////// Logo & adress end /////////////


                                          ////////// Details end /////////////
                                          Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.only(bottom: 14),
                                                    child: Text(
                                                        "Sponsorship Code: ER54645",
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 17.0,
                                                          decoration: TextDecoration.none,
                                                          fontFamily: 'SourceSansPro',
                                                          fontWeight: FontWeight.normal,
                                                        ),
                                                      ),
                                                  ),


                                                  Container(
                                                  margin: EdgeInsets.only(bottom: 14),
                                                    child: Text(
                                                        "Expiration Date: 5th October,18",
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 17.0,
                                                          decoration: TextDecoration.none,
                                                          fontFamily: 'SourceSansPro',
                                                          fontWeight: FontWeight.normal,
                                                        ),
                                                      ),
                                                  ),


                                                  Container(
                                                  margin: EdgeInsets.only(bottom: 14),
                                                    child: Text(
                                                        "More Info: Demo info will be added",
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
                                          ////////// Details end /////////////
                                        ],
                                      ),
                                    )


                                  ],
                                ),
                              ),
                              //////////////////// Hidden Part End ////////////////
                            ],
                          )
                        )
                            ///////////,
      ),
    );
  }
}