import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter/material.dart';
import 'package:new_saca/screens/home/home_wrapper.dart';
import 'package:new_saca/screens/intro/intro_screen.dart';


import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

import '../utilities/colors.dart';
import '../utilities/connectionUtils.dart';
import '../utilities/dialogs.dart';
import '../utilities/fade_transition.dart';
import '../utilities/sizeConfig.dart';
import '../utilities/systemConstants.dart';





class SetupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SetupPageState();
  }

}


class SetupPageState extends State<SetupPage>{



 @override
  void initState() {
    // TODO: implement initState
   startTimer();
  // print(navigatorKey.currentContext);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);

    return Scaffold(
      backgroundColor: mainBlue,
      body:
          //  Navigator.push(
             // context,
             // MaterialPageRoute(builder: (context) => EnterPhoneNumber()),
           // );

          SafeArea(
            child: Column(
              children: [
                Spacer(),
                Center(child: Text("SACA",style: TextStyle(
                   color: mainYellow,
                   fontWeight: FontWeight.bold,
                  fontSize: 55
                ),)),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(text: const TextSpan(
                    text: "Powered by ",
                    style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                    ),
                    children: [
                      TextSpan(
                         text: "Tassaa",
                        style: TextStyle(
                           color: mainYellow,
                          fontWeight: FontWeight.bold
                        )

                      )
                    ]
                  )),
                )
              ],
            ),
          )
    );
  }


  Future<void> startTimer() async {

    bool logged = false;




      var delayTimer = Timer(Duration(milliseconds: 3000),() async {
        // Navigator.push(context, FadeRoute(page: LoginPage()));
        SharedPreferences preferences = await SharedPreferences.getInstance();
        if(preferences.getBool("is_first") !=null){
        if(preferences.getBool("logged")!=null){
          logged = preferences.getBool("logged")!;
          if(!logged){
            Navigator.push(context, FadeRoute(page: IntroScreenPage()));


          }else{

            Suser_id = preferences.getString('user_id')!;
            Sphoto = preferences.getString("photo_url")!;
            Semail = preferences.getString('email')!;
           // Sprofile_photo = preferences.get("profile_photo");
           // Sname = preferences.get('user_name');
          // token = preferences.getString("token")!;
           if(preferences.getString("phone")!=null){
              Sphone = preferences.getString("phone")!;
           }
           // print("$Sphone_number and $Sname");
            // getServerResponse(pullAllPost(), 300, false);
           // getServerResponse(trackPointJson(), 100, false);
          //  await FirebaseAnalytics.instance.logEvent(name: "flyapp_Open",parameters:{
           //   "user_id":Suser_id
          //  }

         //  await getServerResponse(trackPointJson(), 100, false);
          //  var user = await sendbird.connect(Suser_id);
           // sendbird.registerPushToken(type: PushTokenType.fcm, token: token);
           // await sendbird.setPushTemplate(sbPushTemplateAlternative);

           // Navigator.push(context, MaterialPageRoute(
              //  settings: const RouteSettings(name: "/homePAge"),
              //  builder: (mContext) =>MyProfileWrap()));
           Navigator.push(context, FadeRoute(page: HomeWrapper()));

          }}else{



         // Navigator.push(context, FadeRoute(page:  SplashScreenSlide()));
          // Navigator.push(mContext, MaterialPageRoute(builder: (mContext) => IntroPage()));
        }
      }else{
      Navigator.push(context, FadeRoute(page: IntroScreenPage()));

        }
        }








      );


  }


 String trackPointJson() {
   Map<String, dynamic> request = new Map();
   Map<String, dynamic> data = new Map();








   request['code'] = 127;
   request['api'] = 100;
   data['user_id'] = Suser_id;
   data['firebase_token'] = token;
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
       print(code);
       if(rCode == 100) {




         // globalPosts = JsonExtraction().extractPostFromJson(serverResponse);


       }

       if(rCode == 300){


       }


       if( rCode == 200){

        // var status = responseBody['status'];
        // print(status);

       }






     }
     else if (code == 300) {





     }
     else {
       MessageDialogs().messageDialog(
           context, "Error!", responseBody['msg'], 54);
     }
   }


 }
}
