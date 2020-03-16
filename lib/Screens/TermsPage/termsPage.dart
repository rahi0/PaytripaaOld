import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/WelcomePage/welcomePage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class TermsPage extends StatefulWidget {
  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFF9101),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Agreement",
          style: TextStyle(
              color: Color(0XFF414042),
              fontFamily: "SourceSansPro",
              fontSize: 22,
              fontWeight: FontWeight.normal),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                   child: Container(
                     padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           child: Text(
                              "Survey's on the Go - Terms of use And Privacy Policy",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "SourceSansPro",
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal),
                            ),
                         ),

                         Container(
                           padding: EdgeInsets.only(top: 22, bottom: 80),
                           child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "SourceSansPro",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                         )
                       ],
                     ),
                   ),
                  ),

              /////////////// Agree Button Start ////////////////
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
                          onPressed: () {
                            Navigator.push( context, SlideLeftRoute(page: WelcomePage()));
                          },

                          child: Container(
                            //width: 150,
                            //color: Colors.grey,
                            child: Text(
                              'I AGREE',
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
                        )),
                  ],
                ),
              ),

              /////////////// Agree Button End ////////////////
            ],
          ),
        ),
      ),
    );
  }
}
