import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/ConfirmationPage/confirmationPage.dart';
import 'package:pay_trippa/Screens/PaymentPage/paymentPage.dart';
import 'package:pay_trippa/Screens/SpomsorshipCompletePage/sponsorshipCompletePage.dart';
import 'package:pay_trippa/Screens/SponsorshipProductDeailsPage/sponsorshipProductDetailsPage.dart';
import 'package:pay_trippa/Screens/SponsorshipProductPage/sponsorshipProductPage.dart';
import 'package:pay_trippa/Screens/SponsorshipVideoPage/sponsorshipVideoPage.dart';
import 'package:pay_trippa/Screens/SuccessPage/sucessPage.dart';
import 'package:pay_trippa/Screens/TripDetailsPage/tripDetailsPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class ButtonsPage extends StatefulWidget {
  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "This Page Will be Deleted"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            /////////////////Sponsorship dialog////////////////

            FlatButton(
                                      onPressed:(){
                                        _showDialog();
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Sponsorship dialog',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Sponsorship dialog////////////////
              

              /////////////////Sponsorship Video Page////////////////

            // FlatButton(
            //                           onPressed:(){
            //                            Navigator.push( context, SlideLeftRoute(page: SponsorshipVideoPAge()));
            //                           },
            //                           child: Container(
            //                             //width: 150,
            //                             //color: Colors.grey,
            //                             child: Text(
            //                                'Sponsorship Video Page',
            //                               style: TextStyle(
            //                                   color: Colors.white,
            //                                   fontSize: 13.0,
            //                                 ),
            //                             ),
            //                           ),
            //                           color: Colors.blue,
            //                           //elevation: 4.0,
            //                           //splashColor: Colors.blueGrey,
            //                         ),

              ////////////////Sponsorship Video Page ////////////////
              

              /////////////////Sponsorship Product Page////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: SponsorshipProductPage()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Sponsorship Product Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Sponsorship Product Page ////////////////
              

              /////////////////Sponsorship Complete Page////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: SponsorShipCompletePage()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Sponsorship Complete Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Sponsorship Complete Page ////////////////
              


              /////////////////PaymentPage Page////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: PaymentPage()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'PaymentPage Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////PaymentPage Page ////////////////
              

              /////////////////Success Page////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: SuccessPage()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Success Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Success Page ////////////////
              

              /////////////////Sponsorship Product Details Page ////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: SponsorShipProductDetails()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Sponsorship Product Details Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Sponsorship Product Details Page////////////////
            

            /////////////////Confirmation Page ////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: ConfirmationPage()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Confirmation Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Confirmation Page////////////////
              

              /////////////////Trip Details Page ////////////////

            FlatButton(
                                      onPressed:(){
                                       Navigator.push( context, SlideLeftRoute(page: TripDetailsPage()));
                                      },
                                      child: Container(
                                        //width: 150,
                                        //color: Colors.grey,
                                        child: Text(
                                           'Trip Details Page',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                        ),
                                      ),
                                      color: Colors.blue,
                                      //elevation: 4.0,
                                      //splashColor: Colors.blueGrey,
                                    ),

              ////////////////Trip Details Page////////////////

          ],
        ),
      ),
    );
  }









 /////// Sponsorship Dialog  start////////////////////
  void _showDialog() {

     showDialog(
                context: context,
                builder: (BuildContext context) {
                  return  Material(
                    type: MaterialType.transparency,
                        child: Center(
                                                  child: Container(
                          height: MediaQuery.of(context).size.height/1.3,
                          width: MediaQuery.of(context).size.width - 30,
                          padding: EdgeInsets.only(left: 15, right: 15),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /////////////// text Start ////////////////
            
            Container(
              child: Text(
                    "CONGRATULATION",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          color: Color(0XFFFF9101),
                          fontFamily: "Poppins",
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                ),
            ),

            /////////////// text End ////////////////
            
            //////////////////// Middle portion ////////////
            Container(
              child: Column(
                children: <Widget>[
                    /////////////// Logo Start ////////////////
            
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
            
            /////////////// Logo End ////////////////
            

            /////////////// Picture Start ////////////////
            
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: MediaQuery.of(context).size.height/4 -10,
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
                    "Is sponsoring your trip",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          color: Color(0XFF414042),
                          fontFamily: "SourceSansPro",
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                ),
            ),

            /////////////// text End ////////////////
                ],
              ),
            ),

            ////////////////// Middle portion end/////////////
            
            
           /////////////// Button Start ////////////////
              
              Container(
                //color: Colors.red,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      

                      /////////////// Previous Button Start ////////////////
                      
                      Container(
                                   
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                        border: Border.all(
                                          color: Colors.black87
                                        ),
                                        color: Colors.white,
                                      ),
                                     // width: MediaQuery.of(context).size.width/4,
                                      height: 50,
                                      child: FlatButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },

                                        child: Container(
                                          //width: 150,
                                          //color: Colors.grey,
                                          child: Text(
                                             'NO',
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                                color: Color(0XFF414042),
                                                fontSize: 20.0,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'SourceSansPro',
                                                fontWeight: FontWeight.bold,
                                              ),
                                          ),
                                        ),
                                        color: Colors.transparent,
                                        //elevation: 4.0,
                                        //splashColor: Colors.blueGrey,
                                        shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(5.0)),
                                      )
                                      ),

                      /////////////// Previous Button End ////////////////
                      

                      
                      /////////////// Next Button Start ////////////////
                      Expanded(
                                              child: Container(
                                     margin: EdgeInsets.only(left: 15),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                          color: Color(0XFFFF9101),
                                        ),
                                        //width: MediaQuery.of(context).size.width/3,
                                        height: 50,
                                        child: FlatButton(
                                          onPressed: (){

                                          },

                                          child: Container(
                                            //width: 150,
                                            //color: Colors.grey,
                                            child: Text(
                                               'ACCEPT IT',
                                              textDirection: TextDirection.ltr,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'SourceSansPro',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            ),
                                          ),
                                          color: Colors.transparent,
                                          //elevation: 4.0,
                                          //splashColor: Colors.blueGrey,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius: new BorderRadius.circular(10.0)),
                                        )
                                        ),
                      ),
                          /////////////// Next Button End ////////////////
                    ],
                ),
              ),
              
              /////////////// Button End ////////////////
          ],
        ),
      ),
                        ),
                  );
                });
    
  }

   /////// Sponsorship Dialog  end////////////////////
}