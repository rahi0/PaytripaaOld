import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SponsorshipVideoPAge extends StatefulWidget {
  @override
  _SponsorshipVideoPAgeState createState() => _SponsorshipVideoPAgeState();
}

class _SponsorshipVideoPAgeState extends State<SponsorshipVideoPAge> {
VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    // Initielize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }
  
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


                                      // image: DecorationImage(
                                      //   image: AssetImage('assets/img/intro3.png'),
                                      //   fit: BoxFit.fill,
                                      // ),
                                    ),

                          child: Stack(
                            children: <Widget>[
                              Center(child:FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the VideoPlayerController has finished initialization, use
                // the data it provides to limit the aspect ratio of the video.
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  // Use the VideoPlayer widget to display the video.
                  child: VideoPlayer(_controller),
                );
              } else {
                // If the VideoPlayerController is still initializing, show a
                // loading spinner.
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
          Center(
              child:
              ButtonTheme(
                  height: 100.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    padding: EdgeInsets.all(60.0),
                    color: Colors.transparent,
                    textColor: Colors.white,
                    onPressed: () {
                      // Wrap the play or pause in a call to `setState`. This ensures the
                      // correct icon is shown.
                      setState(() {
                        // If the video is playing, pause it.
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          // If the video is paused, play it.
                          _controller.play();
                        }
                      });
                    },
                    child: Icon(
                      _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 120.0,
                    ),
                  ))
          )
                            ],
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
                              "550 Points",
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