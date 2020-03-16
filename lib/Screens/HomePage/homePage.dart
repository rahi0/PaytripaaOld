import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pay_trippa/Screens/SearchPage/searchPagge.dart';
import 'package:pay_trippa/Screens/buttonsPage/buttonsPage.dart';
import 'package:pay_trippa/Widgets/homePageWidgets/drawerWidget.dart';
import 'package:pay_trippa/Widgets/homePageWidgets/recenSearchResult.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();




  //////////////bottom sheet///////////
  VoidCallback _showPersBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersBottomSheetCallBack = null;
    });

    _scaffoldKey.currentState
        .showBottomSheet((context) {
          return new Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height/1.6,
           
            child: Container(
                padding: EdgeInsets.only(top: 10),
                   child: Column(
            children: <Widget>[
              Container(
                height: 2,
                width: 40,
                color: Colors.grey,
                
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                        "Choose a rid, or swipe up for more",
                             style: TextStyle(
                                   color: Colors.black54,
                                       fontSize: 14.0,
                                       decoration: TextDecoration.none,
                                       fontFamily: 'SourceSansPro',
                                         fontWeight: FontWeight.normal,
                                            ),
                                          ),
              ),

              ////////// Ride Button List Start//////////
              Expanded(
                  child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //////
                        rideButtonContainer(),
                        rideButtonContainer(),
                        rideButtonContainer(),
                        rideButtonContainer(),
                        rideButtonContainer(),
                        rideButtonContainer(),
                        rideButtonContainer(),
                        //////
                      ],
                    ),
                  ),
                ),
              ),
              ////////// Ride Button List End///////////
              

              ///////////////// Cash Button Start /////////////
              GestureDetector(
                onTap: (){
                  print("cash");
                },
                  child: Container(
                          // alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 10
                              )
                            ]
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only( left: 25, right: 5, top: 10, bottom: 10 ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/img/cash.png'),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                    ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, right: 3),
                                    child: Text(
                                      'Cash',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'SourceSansPro',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down, color: Colors.black54, size: 20,),
                                ],
                              ),
                              ),
              ),
              ///////////////// Cash Button End /////////////
              
              ///////////////// UberEx Button Start /////////////
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
                                    'CONFIRM UBERX',
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
              ///////////////// UberEx Button End /////////////
            ],
              ),
                      )
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  //////////////bottom sheet end///////////


  ///// Ride Drop Down////////
  var _ride = ['assets/img/uberDrop.png','assets/img/grabDrop.png', 'assets/img/lyftDrop.png'];
  var _currentRideSelected = 'assets/img/uberDrop.png';
  void _occupationDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentRideSelected = newValueSelected;
    });
  }

    ////// Google Map ///////
    
  Set<Marker> _markers = Set();
  Set<Polyline> _polylines = Set();
  CameraPosition _initialPosition = CameraPosition(target: LatLng(26.8206, 30.8025));
  Completer<GoogleMapController> _controller = Completer();
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }





///////////////// RIdeSelector Button //////////////////////
Container rideButtonContainer() {
    return Container(
                         // color: Colors.red,
                                            padding: EdgeInsets.all(15),
                                            child: Row(
                                              children: <Widget>[

                                                ///////////// Logo ///////////
                                                Container(
                                                  margin: EdgeInsets.only(right: 20),
                                                  child: ClipOval(
                                                      child: Image.asset(
                                                        'assets/img/carLogo.png',
                                                        height: 42,
                                                        width: 42,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                ),
                                                ///////////// Logo ///////////
                                                

                                                ///////////// Car Details start ///////////
                                                Expanded(
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                  margin: EdgeInsets.only(bottom: 3),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Container(
                                                          margin: EdgeInsets.only(right: 5),
                                                          child: Text(
                                                              "UberX",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 16.0,
                                                                decoration: TextDecoration.none,
                                                                fontFamily: 'SourceSansPro',
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                        ),

                                                        Container(
                                                          child: Row(
                                                            children: <Widget>[
                                                              Icon(Icons.person, size: 17,),

                                                        Text(
                                                              "4",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11.0,
                                                                decoration: TextDecoration.none,
                                                                fontFamily: 'SourceSansPro',
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),


                                                  Container(
                                                    child: Text(
                                                        "11.46am dropoff",
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 13.0,
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
                                                ///////////// Car details end ///////////
                                                

                                                ///////////// Money start ////////
                                                Container(
                                                    child: Text(
                                                        "\$250.00",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16.0,
                                                          decoration: TextDecoration.none,
                                                          fontFamily: 'SourceSansPro',
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                  ),
                                                ///////////// Money end /////////
                                              ],
                                            ),
                                          );
  }
///////////////// RIdeSelector Button //////////////////////





  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.red,
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          drawer: DrawerOnly(),
          body: SafeArea(
            top: false,
                      child: Container(
              child: Stack(
                children: <Widget>[
        ////////////////////////// Map And Search Start ///////////////////
                  
                  Container(
                    child: Stack(
                      children: <Widget>[

                        /////////////////////// Part 1 /////////////////////
                        Container(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              ///////////////// Map Start ////////////////
                              Container(
                               // color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                //height: MediaQuery.of(context).size.height/1.8,
                                height: MediaQuery.of(context).size.height/1.7,
                                child: GoogleMap(
                                  markers: _markers,
                                  polylines: _polylines,
                                  mapType: MapType.normal,
                                //  myLocationEnabled: true,
                                // myLocationButtonEnabled: true,
                                  onMapCreated: _onMapCreated,
                                  initialCameraPosition: _initialPosition,
                                  //onCameraMove: ((_position) => _updatePosition(_position)),
                                ),
                              ),
                              ///////////////// Map End //////////////////
                              


                              ///////////////// Recent Search Start ////////////////
                              Expanded(
                                child: Container(
                                  color: Colors.white,
                                  
                                  width: MediaQuery.of(context).size.width,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 20, right: 20, top: 55, bottom: 40),
                                        child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          
                                           Container(
                                              child: Text(
                                                'Recent Search',
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'SourceSansPro',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              ),
                                            ),

                                          ////////// Recent Result Card List Start/////////
                                          Container(
                                            //color: Colors.red,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                ////////////
                                                RecentSearchResultCard(),
                                                RecentSearchResultCard(),
                                                RecentSearchResultCard(),
                                                RecentSearchResultCard(),
                                                RecentSearchResultCard(),

                                                ///////////
                                              ],
                                            ),
                                          )
                                          ////////// Recent Result Card List End/////////
                                        ],
                                    ),
                                      ),
                                  ),
                                )
                                ),
                              ///////////////// Recent Search End //////////////////
                              
                            ],
                          ),
                        ),
                        /////////////////////// Part 1 End /////////////////////
                        

                        /////////////////////// Part 2 ///////////////////
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                         // color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                // color: Colors.yellow,
                                width: MediaQuery.of(context).size.width,
                                //height: MediaQuery.of(context).size.height/1.97,
                                height: MediaQuery.of(context).size.height/2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                    ///////////////// Location Search Button Start //////////////
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push( context, SlideLeftRoute(page: SearchPage()));
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.only(left: 20, right: 20),
                                        padding: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 10
                                            )
                                          ]
                                        ),
                                        child: Row(
                                          children: <Widget>[

                                            Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(25),
                                                      color: Colors.grey
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 41,
                                                    width: 1.5,
                                                    color: Colors.grey
                                                  ),
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(1),
                                                      color: Colors.black
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),


                                            ////////////////Location////////////////
                                            Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 12),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    ////////// From Start////////////
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            width: 50,
                                                            child: Text(
                                                              "From",
                                                              style: TextStyle(
                                                                color: Colors.black54,
                                                                fontSize: 15.0,
                                                                decoration: TextDecoration.none,
                                                                fontFamily: 'Helvetica',
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              //color: Colors.red,
                                                              child: Text(
                                                                "Your Location",
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16.0,
                                                                  decoration: TextDecoration.none,
                                                                  fontFamily: 'Helvetica',
                                                                  fontWeight: FontWeight.normal,
                                                                ),
                                                              ),
                                                            ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    ////////// From End////////////
                                                    Container(
                                                      color: Colors.grey[300],
                                                      height: 1.5,
                                                      width: MediaQuery.of(context).size.width,
                                                      margin: EdgeInsets.only(top: 18, bottom: 18),
                                                    ),
                                                    ////////// To Start////////////
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                             width: 50,
                                                            child: Text(
                                                              "To",
                                                              style: TextStyle(
                                                                color: Colors.black54,
                                                                fontSize: 15.0,
                                                                decoration: TextDecoration.none,
                                                                fontFamily: 'Helvetica',
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              child: Text(
                                                                "Sip Ave, Jersey City, NJ, USA",
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16.0,
                                                                  decoration: TextDecoration.none,
                                                                  fontFamily: 'Helvetica',
                                                                  fontWeight: FontWeight.normal,
                                                                ),
                                                              ),
                                                            ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    ////////// To End////////////
                                                  ],
                                                ),
                                              ),
                                            ),
                                            //////////////Location////////////////

                                          ],
                                        ),
                                      ),
                                    )

                                    ///////////////// Location Search Button End //////////////
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                        /////////////////////// Part 2 ///////////////////
                      ],
                    ),
                  ),
         //////////////////////////// Map And Search End ///////////////////
                  

         ///////////////////////// App bar And Button Start ///////////////////
                  
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        
                        Container(
                          child: Column(
                            children: <Widget>[
                              ////////////////// App Bar Start //////////////////
                        Container(
                         // color: Colors.blue,
                          padding: EdgeInsets.only(left: 5, right: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              /////////// Drawer Start //////////////
                              Container(
                                child: IconButton(
                                  onPressed: (){
                                    _scaffoldKey.currentState.openDrawer();
                                  },
                                  icon: Icon(Icons.menu),
                                ),
                              ),
                              /////////// Drawer End //////////////
                              
                              /////////// Drop Down Start //////////////
                              Container(
                          margin: EdgeInsets.only(top: 10),
                         // width: 120,
                          padding: EdgeInsets.only(left: 10, right: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC5C2C7)),
                              items: _ride.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Container(
                                        height: 36,
                                        width: 58,
                                        decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(dropDownStringItem),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                      ),
                                    );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                _occupationDropDownSelected(
                                    newValueSelected);
                              },
                              value: _currentRideSelected,
                            ),
                          ),
                        ),
                              /////////// Drop Down End //////////////
                              
                            ],
                          ),
                        ),
                        ////////////////// App Bar End //////////////////
                        
                        ///////////////// My Location Button Start/////////////////
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){

                                },
                                  child: Container(
                                  margin: EdgeInsets.only(right: 40),
                                 // width: MediaQuery.of(context).size.width/2.4,
                                 // height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        blurRadius: 10
                                        )
                                    ]
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        //height: 50,
                                        padding: EdgeInsets.fromLTRB(15, 10,15, 10),
                                        decoration: BoxDecoration(
                                          color: Colors.black87,
                                          borderRadius: BorderRadius.circular(3)
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                          child: Text(
                                                  "38",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'Helvetica',
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),

                                              Container(
                                          child: Text(
                                                  "Min",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'Helvetica',
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                      ),

                                      Container(
                                      // height: 50,
                                      padding: EdgeInsets.only(left: 10),
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(3)
                                       ),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: <Widget>[

                                           Container(
                                       child: Text(
                                               "My Location",
                                               style: TextStyle(
                                                 color: Colors.black87,
                                                 fontSize: 14.0,
                                                 decoration: TextDecoration.none,
                                                 fontFamily: 'Helvetica',
                                                 fontWeight: FontWeight.normal,
                                               ),
                                             ),
                                           ),

                                           Icon(Icons.keyboard_arrow_right, color: Colors.grey)

                                         ],
                                       ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        ///////////////// My Location Button End /////////////////
                            ],
                          ),
                        ),
                        


                        ////////////////// Find Ride Button Start //////////////////
                        Container(
                        // alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0XFFFF9101),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: FlatButton(
                          onPressed: _showPersBottomSheetCallBack, 
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
                                    'FIND RIDE',
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
                        ////////////////// Find Ride Button End //////////////////
                      ],
                    ),
                  ),
                  /////////////// Drawer, Drop Down And Button End ///////////////////
                  
                ],
              ),
            ),
          ),
        ));
  }
}
