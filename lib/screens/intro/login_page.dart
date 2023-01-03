

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/Common/option_view.dart';
import 'package:new_saca/utilities/colors.dart';

import '../../Common/inter_text_style.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return LoginPageState();
  }

}

class LoginPageState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: subYellow,

       body: SafeArea(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children:  [

               Row(
                 children: const [

                   Icon(
                      Icons.arrow_back_ios,
                     size: 30,
                     color: mainBlue,
                   ),
                   Padding(
                     padding: EdgeInsets.all(16.0),
                     child: Text("Login",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                     ),),
                   ),
                 ],
               ),

                Text("Welcome Back"),



                Spacer(),
                

                Text("Enter email",
                    style: interTextStyle(FontWeight.w500, 16, mainBlue)),

                SizedBox(
                  height: 16,
                ),
                // SizedBox(height: size.height * 0.01),
                TextField(
                 // controller: phone,
                  decoration:  InputDecoration(
                    hintText: "Enter your email",

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: grey03
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: grey03
                        ),
                      )

                  ),

                  onChanged: (phone) {

                  },
                ),

                SizedBox(
                  height: 32,
                ),

                Text("Password",
                    style: interTextStyle(FontWeight.w500, 16, mainBlue)),

               SizedBox(
                  height: 16,
                ),
                // SizedBox(height: size.height * 0.01),
                TextField(
                  // controller: phone,
                  decoration:  InputDecoration(
                      hintText: "create password ",

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: grey03
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: grey03
                        ),
                      )

                  ),

                  onChanged: (phone) {

                  },
                ),
                SizedBox(
                  height: 16,
                ),

              Align(
                alignment: Alignment.centerRight,
                  child: Text("Forgot Password",style: TextStyle(
                     color: mainBlue,
                     fontWeight: FontWeight.bold
                  ),)),

              Spacer(),
                
                
                SizedBox(
                  width: double.infinity,
                  child: OptionView(mainYellow, "Create an Account",
                    radius: 10,padding: 16,textColor: mainBlue,
                    weight: FontWeight.bold,outsidepadding: 0
                    ,),
                ),

                SizedBox(
                  height: 16,
                ),


                Center(
                  child: InkWell(
                     onTap: (){

                     },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(

                        ),),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                             color: mainBlue
                           ),


                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Text(
                               "Login",style: TextStyle(
                               color: mainYellow
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Spacer(),


              ],

            ),
          ),
       ),
    );
  }

}