


import 'package:flutter/material.dart';
import 'package:new_saca/screens/home/application_list_widget.dart';
import 'package:new_saca/utilities/colors.dart';

import '../../utilities/sizeConfig.dart';

class MyApplicationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return MyApplicationPageState();
  }
  
}

class MyApplicationPageState extends State<MyApplicationPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: subYellow,
      body: SafeArea(
         child:DefaultTabController(
           length: 4,
           child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("My Applications",style: TextStyle(
                         color: mainBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 23
                      ),)
                    ],
                  ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  height: 60,

                  width: SizeConfig.screenWidth,
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0,horizontal: 4),
                    child:  TabBar
                      (

                        unselectedLabelColor: Colors.red,


                        //controller: c,

                        isScrollable: false,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelPadding: EdgeInsets.zero,
                        indicator:  BoxDecoration(
                          color: mainYellow,
                          borderRadius: new BorderRadius.circular(15.0),

                        ),
                        tabs:
                        [



                          Container(
                              height: 35,
                              //color: Colors.red,

                              // decoration: BoxDecoration(
                              //   color: appPrimaryColor,
                              // /   borderRadius: new BorderRadius.circular(25.0),
                              //   border: new Border.all(color:appPrimaryColor,width: 2.0),
                              //   ),

                              child: const Align(
                                alignment: Alignment.center,
                                child:

                                      Text("All",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )


                              ))),
                          Container(
                              height: 35,
                              //color: Colors.red,

                              // decoration: BoxDecoration(
                              //   color: appPrimaryColor,
                              // /   borderRadius: new BorderRadius.circular(25.0),
                              //   border: new Border.all(color:appPrimaryColor,width: 2.0),
                              //   ),

                              child: const Align(
                                  alignment: Alignment.center,
                                  child:

                                  Text("Pending",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )


                                  ))),
                          Container(
                              height: 35,
                              //color: Colors.red,

                              // decoration: BoxDecoration(
                              //   color: appPrimaryColor,
                              // /   borderRadius: new BorderRadius.circular(25.0),
                              //   border: new Border.all(color:appPrimaryColor,width: 2.0),
                              //   ),

                              child: const Align(
                                  alignment: Alignment.center,
                                  child:

                                  Text("Accepted",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )


                                  ))),
                          Container(
                              height: 35,
                              //color: Colors.red,

                              // decoration: BoxDecoration(
                              //   color: appPrimaryColor,
                              // /   borderRadius: new BorderRadius.circular(25.0),
                              //   border: new Border.all(color:appPrimaryColor,width: 2.0),
                              //   ),

                              child: const Align(
                                  alignment: Alignment.center,
                                  child:

                                  Text("Rejected",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )


                                  ))),




                        ]





                    ),
                  ),
                ),
              ),
                Expanded(
                  child: TabBarView(children: [
                   ApplicationListWidget(),
                    ApplicationListWidget(),
                    ApplicationListWidget(),
                    ApplicationListWidget(),
                  ]),
                )

              ],
           ),
         )
        ,
      ),

    );
  }
  
}