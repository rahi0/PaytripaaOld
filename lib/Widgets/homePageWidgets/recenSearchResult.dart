import 'package:flutter/material.dart';

class RecentSearchResultCard extends StatefulWidget {
  @override
  _RecentSearchResultCardState createState() => _RecentSearchResultCardState();
}

class _RecentSearchResultCardState extends State<RecentSearchResultCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("kortam nay select...farle kunta korila");
      },
          child: Container(
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
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color: Colors.grey[400],
                                                            width: 1.5
                                                          )
                                                        )
                                                      ),
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