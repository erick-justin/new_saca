

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/Common/option_view.dart';
import 'package:new_saca/screens/intro/choose_fave_page.dart';
import 'package:new_saca/screens/intro/login_page.dart';
import 'package:new_saca/utilities/colors.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../Common/inter_text_style.dart';

class OtpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return OtpPageState();
  }

}

class OtpPageState extends State{
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
                     child: Text("Create an account",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                     ),),
                   ),
                 ],
               ),

                Text("Enter the verification code sent to your mail"),



                Spacer(),


                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 60,

                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                      enabledBorderColor: grey03, borderColor: grey03),
                  style: const TextStyle(fontSize: 17, color: Colors.black),
                  onCompleted: (pin) {
                    setState(() {
                     // widOpacity = 1.0;
                     // otp = pin;
                    });
                    print("Completed: " + pin);
                  },
                  onChanged: (pin) {
                    if (pin.length != 4) {
                    //  widOpacity = 0.0;
                     // otp = pin;
                    }
                  },
                ),





              Spacer(),

RichText(text: TextSpan(
  text: "By continuing, you agree to our ",
  style: TextStyle(color: mainBlue),
  children:[
    TextSpan(
       text: "Terms and conditions",
      style: TextStyle(
         fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline
      )
    )
  ,
    TextSpan(
        text: " and our",
        style: TextStyle(


        )
    ),
    TextSpan(
      text: " Privacy Policy",
      style: TextStyle(
         fontWeight: FontWeight.bold,
         decoration: TextDecoration.underline
      )
    )

  ]
)
       ),



                SizedBox(
                  height: 16,
                ),
                
                
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (builder)=>ChooseFaveCoursesPage()));

                     }
                    ,
                    child: OptionView(mainYellow, "Create an Account",
                      radius: 10,padding: 16,textColor: mainBlue,
                      weight: FontWeight.bold,outsidepadding: 0
                      ,),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),




                Spacer(),
                Spacer(),


              ],

            ),
          ),
       ),
    );
  }

}