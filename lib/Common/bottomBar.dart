



import 'package:flutter/material.dart';

import '../utilities/colors.dart';
import '../utilities/dialogs.dart';

class AppBottom extends StatefulWidget{
  TabController? controller;
  int? index;
  @override
  State<StatefulWidget> createState() {


    // TODO: implement createState
    return AppBottomState();
  }

  AppBottom(this.controller);


}

class AppBottomState extends State<AppBottom>{
  int someIndex = 0;
  //Color barBg =appDeemBlackColor;
  // Color  selItem = Colors.white;
//  Color selLab = appDeemBlackColor;

  @override
  void initState() {
    // TODO: implement initState
    // setChange();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    widget.controller!.addListener(() {

      setState(() {
        someIndex = widget.controller!.index;
      });

    });
    // widget.controller.
    // TODO: implement build
    //  return  BottomNavigationBar(
    //
    //
    //      backgroundColor: Colors.white,
    //      unselectedIconTheme: IconThemeData(
    //          color: Colors.black
    //      ),
    //      selectedItemColor: Colors.green,
    //      selectedIconTheme: IconThemeData(
    //         color: Colors.green
    //      ),
    //
    //      //selectedItemColor: ,
    //
    //    currentIndex: someIndex,
    //      items: const [
    //        BottomNavigationBarItem(
    //
    //          icon: Icon(Icons.home,),
    //          label: 'Home',
    //          //  style: TextStyle(color: Colors.white),),
    //        ),
    //        BottomNavigationBarItem(
    //
    //          icon: Icon(Icons.bar_chart,),
    //          label: 'Stock',
    //          //  style: TextStyle(color: Colors.white),),
    //        ),
    //
    //
    //        BottomNavigationBarItem(
    //
    //          icon: Icon(Icons.assignment,),
    //          label: 'Nukuu',
    //          //  style: TextStyle(color: Colors.white),),
    //        ),
    //        BottomNavigationBarItem(
    //            icon: Icon(Icons.more_horiz,),
    //            label: 'More'
    //          //,style: TextStyle(color: Colors.white),)
    //        )
    //      ],
    //      onTap:onPress
    //  );

    return theBottomNav();
  }

  Widget theBottomNav(){
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          InkWell(
            onTap: (){
              onPress(0);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home
                ,
                  color: someIndex ==0?mainBlue:Color.fromRGBO(108, 108, 108, 1),
                ),
                Text("Home",
                    style: TextStyle(
                      color: someIndex ==0?mainBlue:Color.fromRGBO(108, 108, 108, 1),)
                )],
            ),
          ),
          InkWell(
            onTap: (){

                onPress(1);

            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search,

                  color: someIndex ==1?mainBlue:Color.fromRGBO(108, 108, 108, 1),
                ),
                Text("Explore",
                    style: TextStyle(
                      color: someIndex ==1?mainBlue:Color.fromRGBO(108, 108, 108, 1),)
                )],
            ),
          ),
          InkWell(
            onTap: (){

                onPress(2);


            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outline_outlined,

                  color: someIndex ==2?mainBlue:Color.fromRGBO(108, 108, 108, 1),
                ),
                Text("My Applications",
                    style: TextStyle(
                      color: someIndex ==2?mainBlue:Color.fromRGBO(108, 108, 108, 1),)
                )],
            ),
          ),
          InkWell(
            onTap: (){

                onPress(3);

            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.person,
                  color: someIndex ==3?mainBlue:Color.fromRGBO(108, 108, 108, 1),
                ),
                Text("Account",
                    style: TextStyle(
                      color: someIndex ==3?mainBlue:Color.fromRGBO(108, 108, 108, 1),)
                )],
            ),
          ),

        ],
      ),
    );
  }

  void onPress(int index){
    setState(() {
      someIndex = index;

    });
    widget.controller?.animateTo(index);

  }




// void setChange(){
//     widget.controller?.addListener(() {
//       setState(() {
//
//
//       int index =  widget.controller.index;
//       someIndex = index;
//       if (index == 3 || index == 1){
//         barBg = appDeemBlackColor;
//         selLab = Colors.white;
//       }   else{
//         barBg = appDeemBlackColor;
//         selLab = appYellowColor;
//       }
//     }); });
//
// }





}



