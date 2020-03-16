import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:pay_trippa/Screens/EditProfileSteps/editProfileStepTwo.dart';
import 'package:pay_trippa/customPlugin/routeTransition/routeAnimation.dart';


enum PhotoCrop {
  free,
  picked,
  cropped,
}

class EditProfileFormOne extends StatefulWidget {
  @override
  _EditProfileFormOneState createState() => _EditProfileFormOneState();
}

class _EditProfileFormOneState extends State<EditProfileFormOne> {
  
  String selectedGender = "";
  String selectedRelation = "";

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  ////////// Image Picker//////
  PhotoCrop state;
  File imageFile;
   String image;
  var imagePath;
   bool _isImage= false;



     ///////DAte//////////
  DateTime selectedDate = DateTime.now();
  final f = new DateFormat('dd-MM-yyyy');

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1964, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
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


   /////////////////// Gender Container/////////////

   Container genderContainer( Color selectColor, Icon iCon, String title) {
    return Container(
                                   width: MediaQuery.of(context).size.width/3 - 25,
                                   padding: EdgeInsets.only(top: 16, bottom: 16),
                                   decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      border: Border.all(
                                        color: selectColor, //Color(0xFFC5C2C7), 
                                        width: 1.5
                                      )
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[

                                        iCon,

                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text(
                                           title,
                                            style: TextStyle(
                                            color: selectColor, //Color(0xFFDEDDDF),
                                            fontSize: 17,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                 );
  }


  /////////////////// Relationship Container/////////////

   Container relationshipContainer(Color selectColor ,String title) {
    return Container(
                                   width: MediaQuery.of(context).size.width/2 - 25,
                                   padding: EdgeInsets.only(top: 16, bottom: 16, left: 20),
                                   decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      border: Border.all(
                                        color: selectColor, 
                                        width: 1.5
                                      )
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[

                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text(
                                           title,
                                            style: TextStyle(
                                            color: selectColor,
                                            fontSize: 17,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                 );
  }




@override
  void initState() {
     state = PhotoCrop.free;
    super.initState();
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
                              color: Color(0XFFEEE1CF),
                            ),
                          ),

                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Color(0XFFEEE1CF),
                              borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        ],
                      ),
                    ),
                    //////////////// Indicator End/////////////////
                    



                    //////////////// Picture Button Start/////////////////
                    
                    Container(
                      margin: EdgeInsets.only(top: 25),
                            //color: Colors.red,
                            child: _profilePictureButton()
                          ),
                    //////////////// Picture Button End/////////////////
                    

                    //////////////// Name TextField Start/////////////////
                    
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 25),
                     // color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          //////////////// Firstname TextField Start/////////////////
                          
                          Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                              child: Text(
                                  "First Name",
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
                controller: firstNameController,
                keyboardType: TextInputType.text,
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  hintText: "John",
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
                          ),

                          //////////////// Firstname TextField End/////////////////
                          

                          //////////////// Lastname TextField Start/////////////////
                          
                          Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                              child: Text(
                                  "Last Name",
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
                controller: lastNameController,
                keyboardType: TextInputType.text,
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  hintText: "Doe ",
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
                          ),
                          
                          //////////////// Lastname TextField End/////////////////
                        ],
                      ),
                    ),

                    //////////////// Name TextField End/////////////////
                    


                    ///////////////// Email Textfield  Start///////////////
                    
                   Container(
                            margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                "Email",
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
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Color(0xFFC5C2C7), width: 1.5)),
                  hintText: "jhondoe@email.com",
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

                     ///////////////// Email Textfield  End///////////////
                     



                     ///////////////// Birthday Picker  Start///////////////
                    
                   Container(
                            margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Text(
                                "Birthday",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),

                GestureDetector(
                    onTap: (){
                      _selectDate(context);
                    },
                     child: Container(
                      padding: EdgeInsets.only(bottom: 16, top: 16, left: 20, right: 20),
                     // margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        border: Border.all(
                          color: Color(0xFFC5C2C7), width: 1.5
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                             f.format(selectedDate),
                              style: TextStyle(
                              color: Color(0xFFDEDDDF),
                              fontSize: 17,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal),
                            ),
                          ),

                          Container(
                             child:  Icon(Icons.calendar_today, color: Colors.black, size: 30,)
                            ),
                        ],
                      ),
                    ),
                  ),
                        ],
                      ),
                    ),

                     ///////////////// Birthday Picker  End///////////////
                     



                     ///////////////// Gender Selector  Start///////////////
                     
                     Container(
                       margin: EdgeInsets.only(top: 20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Text(
                                "Sex",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),

                           Container(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[

                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedGender = "Male";
                                     });
                                   },
                                   child: genderContainer(
                                     selectedGender == "Male" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     Icon(Icons.account_circle, color: selectedGender == "Male" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     ), "Male")
                                   ),


                                  GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedGender = "Female";
                                     });
                                   },
                                   child: genderContainer(
                                     selectedGender == "Female" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     Icon(Icons.account_circle, color: selectedGender == "Female" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     ), "Female")
                                   ),



                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedGender = "Binary";
                                     });
                                   },
                                   child: genderContainer(
                                     selectedGender == "Binary" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     Icon(Icons.account_circle, color: selectedGender == "Binary" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     ), "Binary")
                                   ),
                                 
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     ///////////////// Gender Selector  End///////////////
                     



                     ///////////////// Marital Status Selector  Start///////////////
                     
                     Container(
                       margin: EdgeInsets.only(top: 20, bottom: 25),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Text(
                                "Marital Status",
                                style: TextStyle(
                                    color: Color(0XFF414042),
                                    fontFamily: "SourceSansPro",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                          ),

                           Container(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[

                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedRelation = "Single";
                                     });
                                   },
                                   child: relationshipContainer(
                                     selectedRelation == "Single" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     "Single")),

                                    GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selectedRelation = "Married";
                                     });
                                   },
                                   child: relationshipContainer(
                                     selectedRelation == "Married" ? Color(0XFFFF9101): Color(0xFFDEDDDF),
                                     "Married")),
                                 
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     ///////////////// Marital Status Selector  End///////////////


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
                      onPressed: _coninueButton, 
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
    );
  }



 /////////////Croping Image method start///////////
 Widget _profilePictureButton() {
    if (state == PhotoCrop.free){
    return GestureDetector(

      onTap: (){
        _pickImage();
      },
          child: Stack(
            alignment: Alignment. center,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/img/camera.png',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                bottom: 5,
                child: Icon(Icons.camera_alt, color: Colors.grey,),
              )
            ],
          )
    );
    }
    else if (state == PhotoCrop.picked)
      return Column(
        children: <Widget>[
                       imageFile == null ?Container(
                        padding: EdgeInsets.only(top: 100, bottom: 100),
                        child: Center(
                          child: Text(
                            'No Image Selected',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        color: Colors.transparent,
                      ) :  Stack(
            alignment: Alignment. center,
            children: <Widget>[
              ClipOval(
                child: Image.file(
                  imageFile,
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                bottom: 5,
                child: Icon(Icons.camera_alt, color: Colors.grey,),
              )
            ],
          ), 

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                Container(
                 
              // padding: EdgeInsets.all(8),
               decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:  Color(0XFFFF9101),
                  ),
               margin: EdgeInsets.only(right: 10, top: 10,bottom: 10),
               
                child: IconButton(
                 
                  icon: Icon(Icons.crop, color: Colors.white,),
                  
                  onPressed: (){
                    _cropImage();
                  },
                ),
              ),
            Container(
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                    color: Color(0XFFFF9101),
                  ),
             //  padding: EdgeInsets.all(5),
               margin: EdgeInsets.only(left: 10, top: 10,bottom: 10),
               
                child: IconButton(
                 
                  icon: Icon(Icons.done, color: Colors.white),
                  onPressed: (){
                      setState(() {
                       state = PhotoCrop.cropped; 
                      });
                  },
                ),
              ),
            ],
          ) 
        ],
      );//Icon(Icons.crop);
    else if (state == PhotoCrop.cropped){

         
        
      return GestureDetector(
        onTap: (){
           _pickImage();
        },
              child: Stack(
            alignment: Alignment. center,
            children: <Widget>[
              ClipOval(
                child: Image.file(
                  imageFile,
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                bottom: 5,
                child: Icon(Icons.camera_alt, color: Colors.grey,),
              )
            ],
          )
      );
                 
                    }// imageFile != null ? Image.file(imageFile) : Container(); //Icon(Icons.clear);
    else
      return Container();
  }

  Future<Null> _pickImage() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery,imageQuality: 80);
    if (imageFile != null) {
      setState(() {
        state = PhotoCrop.picked;
      });
    }
  }

  Future<Null> _cropImage() async {
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      // toolbarTitle: 'Cropper',
      // toolbarColor: Colors.blue,
      // toolbarWidgetColor: Colors.white,
    );
    if (croppedFile != null) {
      imageFile = croppedFile;
      setState(() {
       // state = PhotoCrop.free; 
        state = PhotoCrop.cropped;
      });
    }
  }
 /////////////Croping Image method end///////////\
 






  void _coninueButton() async{

    // setState(() {
    //      this.hasError = true;
    //          });
     if(firstNameController.text.isEmpty){
        return _showMsg("First Name is empty");
      }
    else if(lastNameController.text.isEmpty){
        return _showMsg("Lirst Name is empty");
      }
      else if(emailController.text.isEmpty){
        return _showMsg("Email is empty");
      }
    var data = { 
        'firstName' : firstNameController.text,
        'lastname' : lastNameController.text,
        'email' : emailController.text,
    }; 
    print(data);
    Navigator.push( context, SlideLeftRoute(page: EditProfileStepTwo()));
  }
}