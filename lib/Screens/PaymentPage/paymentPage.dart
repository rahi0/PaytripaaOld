import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {


 String selectedPayment = "";

  /////////////////// Payment Container/////////////

   Container paymentContainer( Color selectColor, Color selectColor2, Icon iCon, String amount, String title) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
                                         width: MediaQuery.of(context).size.width/2 - 25,
                                         padding: EdgeInsets.only(top: 16, bottom: 16),
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                            border: Border.all(
                                              color: selectColor2, //Color(0xFFC5C2C7), 
                                              width: 2
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey[300],
                                                blurRadius: 20
                                              )
                                            ]
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[

                                              iCon,

                                              Container(
                                                margin: EdgeInsets.only(top: 10),
                                                child: Text(
                                                 amount,
                                                  style: TextStyle(
                                                  color: selectColor, //Color(0xFFDEDDDF),
                                                  fontSize: 16,
                                                  fontFamily: "Helvetica",
                                                  fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                       ),

                                       Container(
                                                margin: EdgeInsets.only(top: 10),
                                                child: Text(
                                                 title,
                                                  style: TextStyle(
                                                  color: selectColor, //Color(0xFFDEDDDF),
                                                  fontSize: 16,
                                                  fontFamily: "SourceSansPro",
                                                  fontWeight: FontWeight.bold),
                                                ),
                                              ),
        ],
      ),
    );
  }


  /////////////////// Payment Container/////////////
  


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
                              "sponsored by",
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
                          //color: Colors.red,
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          child: Wrap(
                            spacing: 20,
                            children: <Widget>[
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/img/BloodBank.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                              ),

                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/img/BloodBank.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                              ),

                              Container(
                                
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/img/BloodBank.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                              ),
                            ],
                          ),
                        ),
                        
                        /////////////// Logo End ////////////////
                        

                        
                  /////////////// text Start ////////////////
                          
                          Container(
                    child: Text(
                        "CONGRATULATION",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFFF9101),
                            fontFamily: "Poppins",
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                        ),

            /////////////// text End ////////////////   
                            ],
                          ),
                        ),

                        ////////////////// tOP portion end/////////////
                        


                        ///////////////// Middle 1 portion start ./////////////
                        
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(top: 23, bottom: 23),
                          margin: EdgeInsets.only(top: 30, right: 10,left: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 16
                                )
                            ]
                          ),
                          child: Column(
                            children: <Widget>[


                               Container(
                          child: Text(
                              "You earned",
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
                              "2,725 Points",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFFFF9101),
                                 // fontFamily: "SourceSansPro",
                                  fontSize: 37,
                                  fontWeight: FontWeight.bold),
                            ),
                        ),

                        /////////////// text End ////////////////
                            ],
                          ),
                        ),
                        ///////////////// Middle 1 portion end ./////////////
                        

                        Container(
                         // width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 28, bottom: 40),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 5,
                            children: <Widget>[
                              Text(
                                  "Your fare for this trip is",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0XFF5F5F5F),
                                      fontFamily: "SourceSansPro",
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),

                              Text(
                                  "550 Points",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0XFF5F5F5F),
                                      fontFamily: "SourceSansPro",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),

                                Text(
                                  "or",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0XFF5F5F5F),
                                      fontFamily: "SourceSansPro",
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),

                                Text(
                                  "\$15",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0XFF5F5F5F),
                                      fontFamily: "SourceSansPro",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "if you pay the regular payment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0XFF5F5F5F),
                                      fontFamily: "SourceSansPro",
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                            ],
                          ),
                        ),


                        /////////////// text Start ////////////////
                        
                        Container(
                          child: Text(
                              "Choose Payment Method",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Helvetica",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                        ),

                        /////////////// text End ////////////////
                        
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 40),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[

                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedPayment = "Credit";
                                     });
                                   },
                                   child: paymentContainer(
                                     selectedPayment == "Credit" ? Color(0XFFFF9101): Color(0xFF666666),selectedPayment == "Credit" ? Color(0XFFFF9101): Colors.white,
                                     Icon(Icons.account_circle, color: selectedPayment == "Credit" ? Color(0XFFFF9101): Color(0xFF666666),
                                     ), "\$15", "Credit card")
                                   ),


                                  GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedPayment = "Points";
                                     });
                                   },
                                   child: paymentContainer(
                                     selectedPayment == "Points" ? Color(0XFFFF9101): Color(0xFF666666),selectedPayment == "Points" ? Color(0XFFFF9101): Colors.white,
                                     Icon(Icons.account_circle, color: selectedPayment == "Points" ? Color(0XFFFF9101): Color(0xFF666666),
                                     ), "550 Points", "PayTrippa ")
                                   ),

                               ],
                             ),
                           ),
                        
                        
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
                                    'PURCHASE',
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