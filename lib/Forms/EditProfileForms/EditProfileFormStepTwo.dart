import 'package:flutter/material.dart';
import 'package:pay_trippa/Screens/QuestionPage/questionPageOne.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';


class EditProfileFormStepTwo extends StatefulWidget {
  @override
  _EditProfileFormStepTwoState createState() => _EditProfileFormStepTwoState();
}

class _EditProfileFormStepTwoState extends State<EditProfileFormStepTwo> {

  TextEditingController incomeController = TextEditingController();
  TextEditingController sizeController = TextEditingController();

  ///// Education Drop Down////////
  var _education = ['Education Level','O Level', 'SSC', 'HSC'];
  var _currentEducationSelected = 'Education Level';
  void _educationDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentEducationSelected = newValueSelected;
    });
  }

  ///// Occupation Drop Down////////
  var _occupation = ['Engineer','Doctor', 'Designer'];
  var _currentOccupationSelected = 'Engineer';
  void _occupationDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentOccupationSelected = newValueSelected;
    });
  }

  ///// Entertainment Drop Down////////
  var _entertainment = ['Sports','Sleeping', 'Reading Books', 'Movies'];
  var _currentEntertainmentSelected = 'Sports';
  void _entertainmentDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentEntertainmentSelected = newValueSelected;
    });
  }

  ///// home Drop Down////////
  var _home = ['Yes','No'];
  var _currentHomeSelected = 'Yes';
  void _homeDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentHomeSelected = newValueSelected;
    });
  }


  _showMsg(msg) { //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
   }


 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20,bottom: 60,),
                child: Column(
                  children: <Widget>[

                    //////////////// Indicator Start///////////////
                    
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Color(0XFFFF9101),
                              borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                          
                          Container(
                            height: 4,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Color(0XFFFF9101),
                            ),
                          ),

                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Color(0XFFFF9101),
                              borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        ],
                      ),
                    ),
                    //////////////// Indicator End/////////////////
                    



                    //////////////// Education Level DropDown Start/////////////////
                    Container(
                      margin: EdgeInsets.only(top: 25),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Highest Level of Education",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),
                              
                              ////////  Education dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 7, top: 7, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  color: Color(0xFFC5C2C7), width: 1.5
                                )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC5C2C7)),
                              items: _education.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xFFDEDDDF),
                                        fontSize: 17,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.normal),
                                    ));
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                _educationDropDownSelected(
                                    newValueSelected);
                              },
                              value: _currentEducationSelected,
                            ),
                          ),
                        ),

                                      ],
                                    ),
                          ),
                    //////////////// Education Level DropDown End/////////////////
                    
                    


                    ///////////////// Income Textfield  Start///////////////
                    
                   Container(
                            margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Household Income",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),
                Container(
              margin: EdgeInsets.only(top: 10,),
              child: TextField(
                style: TextStyle(color: Color(0xFF000000)),
                cursorColor: Color(0xFF9b9b9b),
                controller: incomeController,
                keyboardType: TextInputType.number,
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  hintText: "Total income",
                  hintStyle: TextStyle(
                      color: Color(0xFFDEDDDF),
                      fontSize: 17,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                  
                ),
              ),
                ),
                        ],
                      ),
                    ),

                     ///////////////// Income Textfield  End///////////////
                     



                     ///////////////// Size Textfield  Start///////////////
                    
                   Container(
                            margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Household Size",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),
                Container(
              margin: EdgeInsets.only(top: 10,),
              child: TextField(
                style: TextStyle(color: Color(0xFF000000)),
                cursorColor: Color(0xFF9b9b9b),
                controller: sizeController,
                keyboardType: TextInputType.number,
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  hintText: "Household Size",
                  hintStyle: TextStyle(
                      color: Color(0xFFDEDDDF),
                      fontSize: 17,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                  
                ),
              ),
                ),
                        ],
                      ),
                    ),

                     ///////////////// Size Textfield  End///////////////
                     


                     //////////////// Occupation DropDown Start/////////////////
                    Container(
                      margin: EdgeInsets.only(top: 20),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Occupation",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),
                              

                              ////////  Occupation dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 7, top: 7, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  color: Color(0xFFC5C2C7), width: 1.5
                                )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC5C2C7)),
                              items: _occupation.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xFFDEDDDF),
                                        fontSize: 17,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.normal),
                                    ));
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                _occupationDropDownSelected(
                                    newValueSelected);
                              },
                              value: _currentOccupationSelected,
                            ),
                          ),
                        ),
                                      ],
                                    ),
                          ),
                    //////////////// Occupation DropDown End/////////////////
                    


                    //////////////// Entarteinment DropDown Start/////////////////
                    Container(
                      margin: EdgeInsets.only(top: 20),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Preffered Entertainment",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),
                              

                              ////////  Entarteinment dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 7, top: 7, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  color: Color(0xFFC5C2C7), width: 1.5
                                )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC5C2C7)),
                              items: _entertainment.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xFFDEDDDF),
                                        fontSize: 17,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.normal),
                                    ));
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                _entertainmentDropDownSelected(
                                    newValueSelected);
                              },
                              value: _currentEntertainmentSelected,
                            ),
                          ),
                        ),
                                      ],
                                    ),
                          ),
                    //////////////// Entarteinment DropDown End/////////////////
                    


                    //////////////// Yes/No DropDown Start/////////////////
                    Container(
                      margin: EdgeInsets.only(top: 20),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Do you own your home?",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),
                              

                              ////////  Education dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 7, top: 7, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  color: Color(0xFFC5C2C7), width: 1.5
                                )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC5C2C7)),
                              items: _home.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xFFDEDDDF),
                                        fontSize: 17,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.normal),
                                    ));
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                _homeDropDownSelected(
                                    newValueSelected);
                              },
                              value: _currentHomeSelected,
                            ),
                          ),
                        ),
                                      ],
                                    ),
                          ),
                    //////////////// Yes/No DropDown End/////////////////


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
                      onPressed: _saveButton, 
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
                                'SAVE',
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
    );
  }


  void _saveButton() async{

     if(incomeController.text.isEmpty){
        return _showMsg("Household Income is empty");
      }
    else if(sizeController.text.isEmpty){
        return _showMsg("Household Size is empty");
      }
    // var data = { 
    //     'firstName' : incomeController.text,
    //     'lastname' : sizeController.text,
    // }; 
    // print(data);
    Navigator.push( context, SlideLeftRoute(page: QuestionPageOne()));
  }
}