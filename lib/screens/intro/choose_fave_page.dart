

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/Common/option_view.dart';
import 'package:new_saca/screens/home/home_wrapper.dart';
import 'package:new_saca/screens/intro/login_page.dart';
import 'package:new_saca/utilities/colors.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../Common/inter_text_style.dart';

class ChooseFaveCoursesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return ChooseFaveCoursesPageState();
  }

}

class ChooseFaveCoursesPageState extends State{
  int  fav_value = 1;


  List  favs = ['Engineering',"Art","Business","Accounting","Finance","Medicine","Computer & IT"];

   List selectedFav = [];
  @override

  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      backgroundColor: subYellow,

       body: SafeArea(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,),
            child: Column(


              children:  [

Spacer(),

                Text("Select the courses you prefer 😍",style: TextStyle(
                   fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text("You can select more than one",style: TextStyle(


                ),),


                Spacer(),

                Wrap(

                  children: List<Widget>.generate(
                    favs.length,
                        (int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 1),
                        child: ChoiceChip(

                          padding: EdgeInsets.all(8),

                          label: Text(favs[index],style: TextStyle(
                              color: selectedFav.contains(favs[index])?Colors.white:Colors.black
                          ),),
                          selected: selectedFav.contains(favs[index]),
                          selectedColor: mainBlue,
                          backgroundColor: Colors.white,


                          onSelected: (bool selected) {
                            setState(() {
                             if(selectedFav.contains(favs[index])){
                                selectedFav.remove(favs[index]);
                             }else{
                               selectedFav.add(favs[index]);
                             }
                            });
                          },
                        ),
                      );
                    },
                  ).toList(),
                ),








              Spacer(),
                Spacer(),
                Spacer(),





                SizedBox(
                  height: 16,
                ),
                
                
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                     onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>HomeWrapper()));
                     },
                    child: OptionView(mainBlue, "Next",
                      radius: 10,padding: 16,textColor: mainYellow,
                      weight: FontWeight.bold,outsidepadding: 0
                      ,),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),








              ],

            ),
          ),
       ),
    );
  }

}