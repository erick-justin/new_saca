

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/screens/intro/sign_up_page.dart';
import 'package:new_saca/utilities/colors.dart';
import 'package:new_saca/utilities/sizeConfig.dart';

class IntroScreenPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return IntroScreenPageState();
  }

}

class IntroScreenPageState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
         backgroundColor: subYellow,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
       body: SafeArea(
          child: Column(

            children: [

              Container(
                height: SizeConfig.screenHeight!*0.4,
                decoration: BoxDecoration(
                   color:subYellow,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))

                ),
                child: Column(
                   children: [

                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Container(

                         height: 200,
                         width: 200,

                         decoration: BoxDecoration(
                           border: Border.all(color: mainBlue,width: 1),
                            borderRadius: BorderRadius.circular(15)
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(15),
                           child: CachedNetworkImage(
                             fit: BoxFit.cover,
                              imageUrl: "https://monitor.icef.com/wp-content/uploads/2018/09/african-student-perspectives-study-abroad.png",
                           ),
                         ),

                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("one the best decisions"
                           " I've ever made. Not only did I learn so m"
                           "uch academically, but I. also gained valuable  life skill"
                           "s and made lifelong friends from all over the world",
                       textAlign: TextAlign.center,
                       style: TextStyle(

                       ),),
                     )
                   ],
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Container(

                    child:

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32),
                             child: Text("Welcome to Saca, the ultimate app for\nstudents looking to study abroad",textAlign: TextAlign.center,),
                           ),


                           Spacer(),


                           InkWell(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignUpPage()
                                 ));
                              },
                             child: Container(
                               width: double.infinity,
                               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: mainYellow,width: 2)
                               ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Center(child: Text("Create an Account",style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                    color: mainBlue

                                  ),)),
                                ),
                             ),
                           ),
                           SizedBox(
                             height: 16,
                           ),
                           Container(
                             width: double.infinity,
                             decoration: BoxDecoration(
                               color: mainYellow,
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: mainYellow,width: 2)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Center(child: Text("Login",style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: mainBlue

                               ),)),
                             ),
                           )
                           ,
                           SizedBox(
                             height: 64,
                           ),
                         ],
                      ),
                    ),
                  ))
            ],

          ),
       ),
    );
  }

}