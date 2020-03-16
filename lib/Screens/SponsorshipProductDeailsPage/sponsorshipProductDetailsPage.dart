import 'package:flutter/material.dart';


class SponsorShipProductDetails extends StatefulWidget {
  @override
  _SponsorShipProductDetailsState createState() => _SponsorShipProductDetailsState();
}

class _SponsorShipProductDetailsState extends State<SponsorShipProductDetails> {


  



  List<Widget> _samplePages = [
    PageViewBody(),
     PageViewBody(),
  ];
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
                                'This trip is sponsored by',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Color(0XFF5F5F5F),
                                  fontSize: 22.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Flexible(
              child: PageView.builder(
                controller: _controller,
                itemCount: _samplePages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _samplePages[index % _samplePages.length];
                },
              ),
            ),
            // Container(
            //   color: Colors.lightBlueAccent,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       FlatButton(
            //         child: Text('Prev'),
            //         onPressed: () {
            //           _controller.previousPage(
            //               duration: _kDuration, curve: _kCurve);
            //         },
            //       ),
            //       FlatButton(
            //         child: Text('Next'),
            //         onPressed: () {
            //           _controller.nextPage(duration: _kDuration, curve: _kCurve);
            //         },
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 5, right: 15),
        child: FloatingActionButton(
          onPressed: (){
            _controller.nextPage(duration: _kDuration, curve: _kCurve);
          },
          backgroundColor: Color(0XFFFF9101),
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}






class PageViewBody extends StatefulWidget {
  @override
  _PageViewBodyState createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
          child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 20, right: 20,bottom: 65,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          //////////////////// tOP portion ////////////
                          Container(
                            child: Column(
                              children: <Widget>[

                          


                                /////////////// Logo Start ////////////////
                          
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            height: 60,
                            width: 60,
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
                            
                            height: MediaQuery.of(context).size.height/3 -20,
                            decoration: BoxDecoration(
                              //color: Colors.red,
                                        image: DecorationImage(
                                          image: AssetImage('assets/img/intro3.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                          ),
                          
                          /////////////// Picture End ////////////////
                          


                          

                          
                              ],
                            ),
                          ),

                          ////////////////// tOP portion end/////////////
                          


                          ///////////////// bottom portion start ./////////////
                          
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[


                       /////////////// text Start ////////////////
                          
                          Container(
                            child: Text(
                                "Slim and seamless",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Helvetica",
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                          ),

                          /////////////// text End ////////////////
                          

                           Container(
                             margin: EdgeInsets.only(top: 20),
                            child: Text(
                                "Cras quis nulla commodo, aliquam lectus sed, blandit augue. Cras ullamcorper bibendum bibendum. Duis tincidunt urna non pretium porta. Nam condimentum vitae ligula vel ornare. Phasellus at semper turpis. Nunc eu tellus tortor. Etiam at condimentum nisl, vitae sagittis orci. Donec id dignissim nunc. Donec elit ante, eleifend a dolor et, venenatis facilisis dolor. In feugiat orci odio, sed lacinia sem elementum quis. Aliquam consectetur, eros et vulputate euismod, nunc leo tempor lacus, ac rhoncus neque eros nec lacus. Cras lobortis molestie faucibus.",
                                
                                style: TextStyle(
                                    color: Color(0XFF5F5F5F),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
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
    );
  }
}