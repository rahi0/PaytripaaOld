import 'package:flutter/material.dart';

class SponsorshipProductPage extends StatefulWidget {
  @override
  _SponsorshipProductPageState createState() => _SponsorshipProductPageState();
}

class _SponsorshipProductPageState extends State<SponsorshipProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[

            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 20, right: 20,bottom: 60,top: 60),
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
                              "Is sponsoring your trip",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF5F5F5F),
                                  fontFamily: "SourceSansPro",
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal),
                            ),
                        ),

                        /////////////// text End ////////////////
                        


                              /////////////// Logo Start ////////////////
                        
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/img/BloodBank.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                        ),
                        
                        /////////////// Logo End ////////////////
                        

                        /////////////// Picture Start ////////////////
                        
                        Container(
                          
                          height: MediaQuery.of(context).size.height/3 -10,
                          decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/img/intro3.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                        ),
                        
                        /////////////// Picture End ////////////////
                        

                        /////////////// text Start ////////////////
                        
                        Container(
                          child: Text(
                              "New Audi A8 Introduction Viedo",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "SourceSansPro",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                        ),

                        /////////////// text End ////////////////
                        

                        
                            ],
                          ),
                        ),

                        ////////////////// tOP portion end/////////////
                        


                        ///////////////// bottom portion start ./////////////
                        
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            children: <Widget>[


                               Container(
                          child: Text(
                              "You will earn",
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
                              "1290 Points",
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
                              "From this sponsor activity",
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
                        )
                        ///////////////// bottom portion end ./////////////
                        
                        
                      ],
                    ),
                  ),
            ),




             /////////////// Coninue Button Start ////////////////
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        // alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0XFFFF9101),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 25, right: 5
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                SizedBox(width: 5,),
                                Container(
                                  child: Text(
                                    'CONTINUE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'SourceSansPro',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Icon(Icons.arrow_forward, color: Colors.white)
                              ],
                            ),
                          ),
                          color: Colors.transparent,
                          //elevation: 4.0,
                          //splashColor: Colors.blueGrey,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                        )),
                  ],
                ),
              ),

              /////////////// Coninue Button End ////////////////
          ],
        ),
      ),
    );
  }
}