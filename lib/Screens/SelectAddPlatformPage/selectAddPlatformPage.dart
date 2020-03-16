import 'package:flutter/material.dart';

class SelectAddPlatformPage extends StatefulWidget {
  @override
  _SelectAddPlatformPageState createState() => _SelectAddPlatformPageState();
}

class _SelectAddPlatformPageState extends State<SelectAddPlatformPage> {
  String selectedPlatform = "";
  bool uberCheckBoxValue = false;
  bool lyftCheckBoxValue = false;
  bool agreementCheckBoxValue = false;

  Container buttonContainer(Container conti, String title, Container phone,
      String img, Color colors) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 20),
      // color: Colors.red,
      child: Row(
        children: <Widget>[
          ///////////// Card start /////////
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 15, top: 10, bottom: 10),
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[300], blurRadius: 16)
                  ]),
              child: Row(
                children: <Widget>[
                  ////////////// Checkbox Start ////////////

                  conti,

                  ////////////// Checkbox End ////////////
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ///////// Top Part Start /////////
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ////////// Title & Number Start/////////////
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ////////// Title Start/////////////
                                      Container(
                                        child: Text(
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
                                      ////////// Title End/////////////

                                      ////////// Number Start/////////////

                                      phone,
                                      ////////// Number End/////////////
                                    ],
                                  ),
                                ),
                                ////////// Title & Number End/////////////

                                /////////////// Picture Start ////////////////

                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(img),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),

                                /////////////// Picture End ////////////////
                              ],
                            ),
                          ),
                          ///////// Top Part End /////////

                          ///////// Divider Start /////////
                         Container(
                            margin: EdgeInsets.only(top: 10, bottom: 8),
                            height: 0.5,
                            color: colors,
                          ),
                          ///////// Divider End /////////
                        ],
                      ),
                    ),
                  ),
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
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0XFFFF9101),
          elevation: 0,
          title: Text(
            'Add Platforms',
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
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 70),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            //////////////// Uber Button Start ////////////////
                            buttonContainer(
                                ////////////////
                                Container(
                                  // color: Colors.red,
                                  child: new Checkbox(
                                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: uberCheckBoxValue,
                                      activeColor: Color(0XFFFF9101),
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          uberCheckBoxValue = newValue;
                                        });
                                      }),
                                ),
                                ////////////////
                                "UBER",
                                ////////////////
                                Container(
                                  child: Text(
                                    "+412456789074",
                                    style: TextStyle(
                                      color: uberCheckBoxValue ?  Color(0XFFFF9101) :Colors.grey,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'SourceSansPro',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                ////////////////
                                'assets/img/uber.png',
                                ///////////////
                                uberCheckBoxValue ?  Color(0XFFFF9101) : Colors.white
                                ),
                            //////////////// Uber Button End ////////////////


                            //////////////// Lyft Button Start ////////////////
                            buttonContainer(
                                ////////////////
                                Container(
                                  // color: Colors.red,
                                  child: new Checkbox(
                                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: lyftCheckBoxValue,
                                      activeColor: Color(0XFFFF9101),
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          lyftCheckBoxValue = newValue;
                                        });
                                      }),
                                ),
                                ////////////////

                                "Lyft",
                                ////////////////
                                Container(
                                  child: Text(
                                    "+412456789074",
                                    style: TextStyle(
                                      color: lyftCheckBoxValue ?  Color(0XFFFF9101): Colors.grey,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'SourceSansPro',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                ////////////////
                                'assets/img/lyft.png',
                                ///////////////
                               lyftCheckBoxValue ?  Color(0XFFFF9101) : Colors.white
                                ),
                            //////////////// Lyft Button End ////////////////
                          ],
                        ),
                      ),




                      ///////////// Agreement Check Box start////////////
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                  // color: Colors.red,
                                  child: new Checkbox(
                                       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      value: agreementCheckBoxValue,
                                      activeColor: Color(0XFFFF9101),
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          agreementCheckBoxValue = newValue;
                                        });
                                      }),
                                ),
                            

                            ////////// text Start/////////////
                                      Expanded(
                                          child: Container(
                                            padding: EdgeInsets.only(top: 8),
                                          child: Text(
                                            "Agreement and various demo info",
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 17.0,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'SourceSansPro',
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                      ////////// text End/////////////
                          ],
                        ),
                      )
                      ///////////// Agreement Check Box end////////////
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
                    /////////////// Cancel Button Start ////////////////
                    
                    Container(
                               
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    border: Border.all(
                                      color: Colors.black87
                                    ),
                                    color: Colors.white,
                                  ),
                                  width: MediaQuery.of(context).size.width / 3 + 20,
                                  height: 50,
                                  child: FlatButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },

                                    child: Container(
                                      //width: 150,
                                      //color: Colors.grey,
                                      child: Text(
                                         'CANCEL',
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

                    /////////////// Cancel Button End ////////////////
                    
                    /////////////// Next Button Start ////////////////

                    Container(
                        margin: EdgeInsets.only(left: 15, ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0XFFFF9101),
                        ),
                        width: MediaQuery.of(context).size.width / 3 + 20,
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            // Navigator.push( context, SlideLeftRoute(page: SignInPage()));
                          },

                          child: Container(
                            //width: 150,
                            //color: Colors.grey,
                            child: Text(
                              'NEXT',
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

                    /////////////// Next Button End ////////////////
                  ],
                ),
              )
              ///////////////// Add Platform Button End////////////
            ],
          ),
        ));
  }
}
