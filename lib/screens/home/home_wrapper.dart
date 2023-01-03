

import 'package:flutter/material.dart';
import 'package:new_saca/screens/home/home_page.dart';
import 'package:new_saca/screens/home/my_application_page.dart';
import 'package:new_saca/utilities/colors.dart';

import '../../Common/bottomBar.dart';
import 'explore_page.dart';

class HomeWrapper extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return HomeWrapperState();
  }
  
  
  
}

class HomeWrapperState extends State<HomeWrapper> with TickerProviderStateMixin{
  TabController?  controller;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
      backgroundColor:subYellow,
     body:theWidget() ,
     bottomNavigationBar: AppBottom(controller),
   );
  }

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(vsync: this,length:4);
    super.initState();
  }

  Widget theWidget(){
    return TabBarView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
         HomePage(),
        ExplorePage(),
         MyApplicationPage(),
          HomePage()








        ]);

  }
  
}