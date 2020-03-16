import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
var locationName = List<String>();
 ////// list
List<String> name = [
    "New York",
    "Michigan",
    "Alaska",
    "Texas",
    "LA"
  ];


@override
  void initState() {
    locationName.addAll(name);
    super.initState();
  }
   ///// Ride Drop Down////////
  var _dropOption = ['For Me','Other'];
  var _dropOptionSelected = 'For Me';
  void _occupationDropDownSelected(String newValueSelected) {
    setState(() {
      this._dropOptionSelected = newValueSelected;
    });
  }



  ///////////// Search////
 
////// Blank Array

////// initState

////// Filter method
void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(name);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        locationName.clear();
        locationName.addAll(dummyListData);
        //print(friendname);
      });
      return;
    } else {
      setState(() {
        locationName.clear();
        locationName.addAll(name);
        //print(friendname);
      });
    }
  }
////// Onchanged in textfield

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


        body: SafeArea(
                  child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
           // color: Colors.red,
            child: Column(
              children: <Widget>[
                /////////////////////////// App & Search Bar Start///////////////////////////
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[200],
                                  blurRadius: 10
                                )
                              ]
                            ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ////////////////// App Bar Start /////////////////
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5,top: 5, bottom: 5),
                       // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            BackButton(),


                            /////////// Drop Down Start //////////////
                                Container(
                           // width: 120,
                            padding: EdgeInsets.only(left: 10, right: 5),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC5C2C7)),
                                items: _dropOption.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(Icons.account_circle),
                                                Container(
                                                  margin: EdgeInsets.only(left: 3),
                                                  child: Text(
                                                    dropDownStringItem,
                                                    textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 14.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Helvetica',
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ),
                                      );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  _occupationDropDownSelected(
                                      newValueSelected);
                                },
                                value: _dropOptionSelected,
                              ),
                            ),
                          ),


                          SizedBox(width: 30,)
                                /////////// Drop Down End //////////////
                          ],
                        ),
                      ),
                      ////////////////// App Bar Start /////////////////
                      
                      ////////////////// Search Bar Start /////////////////
                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.only( bottom: 15, left: 25, right: 20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
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
                                                    ////////// From TextField Start////////////
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                              child: Container(
                                                                child: TextField(
                                                                          style: TextStyle(color: Color(0xFF000000)),
                                                                          cursorColor: Color(0xFF9b9b9b),
                                                                          controller: fromController,
                                                                          keyboardType: TextInputType.text,
                                                                          onChanged: (value){
                                                                            filterSearchResults(value);
                                                                          },
                                                                          decoration: InputDecoration(
                                                                            focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                                                                borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                                                                            enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                                                                borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 0)),
                                                                            hintText: "Your Location",
                                                                            hintStyle: TextStyle(
                                                                                color: Colors.grey,
                                                                                fontSize: 15,
                                                                                fontFamily: "Helvetica",
                                                                                fontWeight: FontWeight.normal),
                                                                            contentPadding: EdgeInsets.only(left: 16, bottom: 10, top: 10),
                                                                            fillColor: Colors.grey[200],
                                                                            focusColor: Colors.grey,
                                                                            filled: true,
                                                                            suffixIcon: IconButton(
                                                                              icon: Icon(Icons.clear, color: Colors.black54,),
                                                                              onPressed: () {
                                                                                 fromController.clear();
                                                                              })
                                                                            
                                                                          ),
                                                                ),
                                                              ),
                                                                ),


                                                                IconButton(
                                                                  onPressed: null,
                                                                  icon: Icon(Icons.add, color: Colors.white,),
                                                                )

                                                        ],
                                                      ),
                                                    ),
                                                    ////////// From TextField End////////////
                                                    Container(
                                                      margin: EdgeInsets.only(top: 5),
                                                    ),
                                                    ////////// To TextField Start////////////
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                              child: Container(
                                                                child: TextField(
                                                                          style: TextStyle(color: Color(0xFF000000)),
                                                                          cursorColor: Color(0xFF9b9b9b),
                                                                          controller: toController,
                                                                          keyboardType: TextInputType.text,
                                                                          onChanged: (value){
                                                                            filterSearchResults(value);
                                                                          },
                                                                          decoration: InputDecoration(
                                                                            focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                                                                borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                                                                            enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                                                                borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 0)),
                                                                            hintText: "Drop Location",
                                                                            hintStyle: TextStyle(
                                                                                color: Colors.grey,
                                                                                fontSize: 15,
                                                                                fontFamily: "Helvetica",
                                                                                fontWeight: FontWeight.normal),
                                                                            contentPadding: EdgeInsets.only(left: 16, bottom: 10, top: 10),
                                                                            fillColor: Colors.grey[200],
                                                                            focusColor: Colors.grey,
                                                                            filled: true,
                                                                            suffixIcon: IconButton(
                                                                              icon: Icon(Icons.clear, color: Colors.black54,),
                                                                              onPressed: () {
                                                                                 toController.clear();
                                                                              })
                                                                            
                                                                          ),
                                                                ),
                                                              ),
                                                                ),


                                                                IconButton(
                                                                  onPressed: (){
                                                                    
                                                                  },
                                                                  icon: Icon(Icons.add),
                                                                )
                                                        ],
                                                      ),
                                                    ),
                                                    ////////// To TextField End////////////
                                                  ],
                                                ),
                                              ),
                                            ),
                                            //////////////Location////////////////

                                          ],
                                        ),
                                      ),
                      ////////////////// Search Bar Start /////////////////
                    ],
                  ),
                ),
                 /////////////////////////// App & Search Bar End///////////////////////////
                 

                 Expanded
                 (child: Container(
                   color: Colors.white,
                   child: CustomScrollView(
                     physics: BouncingScrollPhysics(),
                     slivers: <Widget>[
                       SliverPadding(
                            padding: EdgeInsets.only(bottom: 15, top: 5),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    return SearchCard();
                                    },
                            childCount: locationName.length
                            ),
                            ),
                          ),
                     ],
                   ),
                 )
                 )
              ],
            ),
          ),
        ),
    );
  }
}


/////////////////////////////////// Search Card //////////////////////////////////





class SearchCard extends StatefulWidget {
  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("kortam nay select...farle kunta korila");
      },
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 20),
             decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.grey[300],
                                                            width: 1.0
                                                          )
                                                        )
                                                      ),
                                              child: Row(
                                                children: <Widget>[

                                                  ///////////// Logo ///////////
                                                  Container(
                                                    margin: EdgeInsets.only(right: 15),
                                                    
                                                    child: Container(
                                                      padding: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius: BorderRadius.circular(25)
                                                      ),
                                                      child: Icon(Icons.location_on, color: Colors.white,)
                                                      )
                                                    // ClipOval(
                                                    //     child: Image.asset(
                                                    //       'assets/img/lyft.png',
                                                    //       height: 42,
                                                    //       width: 42,
                                                    //       fit: BoxFit.cover,
                                                    //     ),
                                                    //   ),
                                                  ),
                                                  ///////////// Logo ///////////
                                                  

                                                  ///////////// Adress ///////////
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.only(top: 20,  bottom: 20),
                                                     
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          Container(
                                                    margin: EdgeInsets.only(bottom: 5),
                                                      child: Text(
                                                          "Wireless Bus Stop",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16.0,
                                                            decoration: TextDecoration.none,
                                                            fontFamily: 'Helvetica',
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                    ),


                                                    Container(
                                                      child: Text(
                                                          "St, Lounge Road, California",
                                                          style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 13.0,
                                                            decoration: TextDecoration.none,
                                                            fontFamily: 'Helvetica',
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
    );
  }
}