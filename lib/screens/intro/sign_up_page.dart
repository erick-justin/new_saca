

import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/Common/option_view.dart';
import 'package:new_saca/screens/home/home_wrapper.dart';
import 'package:new_saca/screens/intro/login_page.dart';
import 'package:new_saca/utilities/colors.dart';
import 'package:new_saca/utilities/commonFunction.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Common/inter_text_style.dart';
import '../../main.dart';
import '../../utilities/connectionUtils.dart';
import '../../utilities/dialogs.dart';
import '../../utilities/systemConstants.dart';
import 'otp_page.dart';

class SignUpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SignUpPageState();
  }

}

class SignUpPageState extends State{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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

                Text("Let’s begin the journey of studying abroad"),



                Spacer(),
                

                Text("Enter email",
                    style: interTextStyle(FontWeight.w500, 16, mainBlue)),

                SizedBox(
                  height: 16,
                ),
                // SizedBox(height: size.height * 0.01),
                TextField(
                 controller: emailController,
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
                   controller: passwordController,
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
                  obscureText: true,

                  onChanged: (phone) {

                  },
                ),

              Spacer(),
                
                
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                     onTap: (){

                       if(validateInputs(context, [passwordController.text,emailController.text])){
                          getServerResponse(signupJson(), 100, true);
                       }
                       // Navigator.push(context, MaterialPageRoute(builder: (builder)=>OtpPage()));
                     },
                    child: OptionView(mainYellow, "Create an Account",
                      radius: 10,padding: 16,textColor: mainBlue,
                      weight: FontWeight.bold,outsidepadding: 0
                      ,),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),


                Center(
                  child: InkWell(
                     onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginPage()));
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



  String signupJson() {
    Map<String, dynamic> request = new Map();
    Map<String, dynamic> data = new Map();








    request['code'] = 100;
    request['api'] = 100;
    data['email'] = emailController.text;
    data['password'] = passwordController.text;

    request['data'] = data;

    print(jsonEncode(request));
    return jsonEncode(request);
  }



  Future<void> getServerResponse (String requestJsonString,int rCode, bool hasLoading) async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      var status = true;
      return;
    }
    if (hasLoading){
      MessageDialogs().loadingIndicator(context);}
    String serverResponse = await  ConnectionUtils(context).createPost(serverUrl, requestJsonString, hasLoading);
    // MessageDialogs().messageDialog(context, "header", "$serverResponse", 655);
    if (hasLoading){
      MessageDialogs().dismissDialogs(context);}

    if (serverResponse != null) {
      var responseBody = jsonDecode(serverResponse);
      int code = responseBody['code'];
      if (code == 200) {


         var user_details = responseBody['user_details'];

SharedPreferences p = await SharedPreferences.getInstance();
p.setBool("logged", true);
p.setString("user_id", user_details['user_id']);
p.setBool("is_first", true);
p.setString("email", user_details['email']);
p.setString("photo_url", user_details['photo_url']);

Suser_id = user_details['user_id'];
Semail = user_details['email'];


Navigator.push(context, MaterialPageRoute(builder: (builder)=>HomeWrapper()));











      }
      else if (code == 300) {



        MessageDialogs().messageDialog(
            context, "Error!", responseBody['msg'], 54);

      }
      else {
        MessageDialogs().messageDialog(
            context, "Error!", responseBody['msg'], 54);
      }
    }


  }
}