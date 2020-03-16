import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pay_trippa/Screens/ActivitiesPage/activitiesPage.dart';
import 'package:pay_trippa/Screens/PlatformPage/platformPage.dart';
import 'package:pay_trippa/Screens/buttonsPage/buttonsPage.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';

class DrawerOnly extends StatefulWidget {
  @override
  _DrawerOnlyState createState() => _DrawerOnlyState();
}

class _DrawerOnlyState extends State<DrawerOnly> {


  Container buttonContainer(Icon icons, String title, Color colors) {
    return Container(
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(bottom: 5),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                   // color: Colors.red,
                    child: Row(
                      children: <Widget>[
                        icons,
                        Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: new Text(
                    title,
                    style: TextStyle(
                      color: Color(0XFF1A3D7A),
                      fontSize: 18.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                        ),
                      ],
                    ),
                  ),
              ),

                Container(
                  color: colors ,
                  width: 5,
                  height: 45,
                )
            ],
          ),
        );
  }


  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
          
      children: <Widget>[
        new DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0XFFFF9101),
          ),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10,left: 10),
                child: ClipOval(
                  child: Image.asset(
                    'assets/img/profile.png',
                    height: 75,
                    width: 75,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        
                        child: new Text(
                          "Humayun Rahi",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                      Container(
                        child: new Text(
                          "jhondoe@gmail.com",
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 15.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),

          //////   camera icon  ////////////
          // decoration: new BoxDecoration(
          //     color: Colors.orange
          // ),
        ),


        //  SizedBox(
        //    height: 10,
        //  ),
        

        //////////// Home Button Start////////////////
        
        InkWell(
          onTap: (){

          },
          child: buttonContainer(Icon(Icons.home, color: Color(0XFF1A3D7A), ) , "Home", Color(0XFFFF9101))
          ),
        
        //////////// Home Button End////////////////

        //////////// profile Button Start////////////////
        InkWell(
          onTap: (){
            
          },
          child: buttonContainer(Icon(Icons.account_circle, color: Color(0XFF1A3D7A), ) , "Profile", Color(0XFFFFFFFF))
          ),
        //////////// profile Button End////////////////

       //////////// Activities Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, SlideLeftRoute(page: ActivitiesPage()));
          },
          child: buttonContainer(Icon(Icons.blur_circular, color: Color(0XFF1A3D7A), ) , "Activities", Color(0XFFFFFFFF))
          ),
        //////////// Activities Button End////////////////

       //////////// Platforms Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, SlideLeftRoute(page: PlatformPage()));
          },
          child: buttonContainer(Icon(Icons.share, color: Color(0XFF1A3D7A), ) , "Platforms", Color(0XFFFFFFFF))
          ),
        //////////// Platforms Button End////////////////

        //////////// Notification Button Start////////////////
        InkWell(
          onTap: (){
            
          },
          child: buttonContainer(Icon(Icons.notifications_none, color: Color(0XFF1A3D7A), ) , "Notification", Color(0XFFFFFFFF))
          ),
        //////////// Notification Button End////////////////

        //////////// Invite Friends Button Start////////////////
        InkWell(
          onTap: (){
            
          },
          child: buttonContainer(Icon(Icons.mail_outline, color: Color(0XFF1A3D7A), ) , "Invite Friends", Color(0XFFFFFFFF))
          ),
        //////////// Invite Friends Button End////////////////

       //////////// Help Button Start////////////////
        InkWell(
          onTap: (){
            
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0XFF1A3D7A), ) , "Help", Color(0XFFFFFFFF))
          ),
        //////////// Help Button End////////////////

        //////////// Setting Button Start////////////////
        InkWell(
          onTap: (){
            
          },
          child: buttonContainer(Icon(Icons.settings, color: Color(0XFF1A3D7A), ) , "Setting", Color(0XFFFFFFFF))
          ),
        //////////// Setting Button End////////////////
        

        //////////// Log Out Button Start////////////////
        InkWell(
          onTap: (){
            
          },
          child: buttonContainer(Icon(Icons.exit_to_app, color: Color(0XFF1A3D7A), ) , "Log Out", Color(0XFFFFFFFF))
          ),
        //////////// Log Out Button End////////////////
       


       //////////// will be delete////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, SlideLeftRoute(page: ButtonsPage()));
          },
          child: buttonContainer(Icon(Icons.delete, color: Color(0XFF1A3D7A), ) , "Flowless", Color(0XFFFFFFFF))
          ),
        //////////// will be delete////////////////
        



        ///////////////// Social bar //////////////
        
        Container(
          padding: EdgeInsets.only(left: 25),
          margin: EdgeInsets.only(top: 20),
        //  color: Colors.red,
          child: Row(
            children: <Widget>[

              /////////// fb start /////////////
              GestureDetector(
                onTap: (){

                },
                 child: Container(
                  child: Icon(Icons.add_to_home_screen, color: Color(0XFFFF9101),),
                  // height: 30,
                  // width: 30,
                  // decoration: BoxDecoration(
                  // //color: Colors.white,
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/img/fb.png',),
                  //             fit: BoxFit.fill,
                  //           ),
                  //         ),
                ),
              ),

               /////////// fb end /////////////
               

               /////////// insta start /////////////
              GestureDetector(
                onTap: (){

                },
                  child: Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Icon(Icons.image, color: Color(0XFFFF9101),),
                  // height: 30,
                  // width: 30,
                  // decoration: BoxDecoration(
                  // //color: Colors.white,
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/img/insta.png',),
                  //             fit: BoxFit.fill,
                  //           ),
                  //         ),
                ),
              ),

               /////////// insta end /////////////
               

               /////////// twet start /////////////
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  child: Icon(Icons.thumbs_up_down, color: Color(0XFFFF9101),),
                  // height: 30,
                  // width: 30,
                  // decoration: BoxDecoration(
                  // //color: Colors.white,
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/img/twet.png',),
                  //             fit: BoxFit.fill,
                  //           ),
                  //         ),
                ),
              )

               /////////// twet end /////////////
            ],
          ),
        ),

        SizedBox(height: 50,)
      ],
    ));
  }
}
