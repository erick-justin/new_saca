

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/sizeConfig.dart';

class ApplicationListWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ApplicationListWidgetState();
  }

}

class ApplicationListWidgetState extends State<ApplicationListWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ListView.builder(
     itemCount: 13,
       itemBuilder: (d,index){
     return scholarshipView();
   });
  }


  Widget scholarshipView(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        width:SizeConfig.screenWidth!*.8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: mainBlue,width: 2
            )


        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                    color: mainYellow,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(13)
                    )
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Engineering",style: TextStyle(
                      color: mainBlue,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [

                  Container(
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: mainBlue,width: 1)
                    ) ,
                    child: ClipRRect(

                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: "https://1000logos.net/wp-content/uploads/2018/02/Stanford-University-Logo.png",

                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Stanford University",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainBlue,
                            fontSize: 17
                        ),),
                        const Text("Country - USA",)
                      ],
                    ),
                  ))

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [


                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Civil Engineering",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: mainBlue,
                            fontSize: 17
                        ),),

                        const SizedBox(
                          height: 6,
                        ),
                        const Text("Bachelor")
                      ],
                    ),
                  ))

                ],
              ),
            ),



            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: BoxDecoration(
                    color: grey01,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(13)
                    )
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Pending",style: TextStyle(
                      color: mainBlue,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }
}