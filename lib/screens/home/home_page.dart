

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/main.dart';
import 'package:new_saca/utilities/colors.dart';
import 'package:new_saca/utilities/sizeConfig.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  List  favs = ['Engineering',"Art","Business","Accounting","Finance","Medicine","Computer & IT"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return  Container(
     child:
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
                height: AppBar().preferredSize.height+20,
             ),

             Row(
               children: [
                 Container(
                   height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                       child: CachedNetworkImage(
                         errorWidget: (s,f,g){
                            return Container(
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(150),
                                 border: Border.all(color: mainBlue)
                              ),
                                child: Icon(Icons.person));
                         },
                         imageUrl:
                         Sphoto,

                       ),
                    ),
                 ),

                 Expanded(child:
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Text(Sname,style: TextStyle(
                        fontWeight: FontWeight.bold,
                       fontSize: 15
                     ),),
                     Text(Semail)
                   ],),
                 )),


               Icon(
                 Icons.notifications_none_rounded,
                 size: 30,
                 color: mainBlue,

               )
  ]
             ),
            SizedBox(
              height: 65,
            ),

             Text("Courses",style: TextStyle(
                fontSize: 27,
               fontWeight: FontWeight.bold
             ),),
             Wrap(

               children: List<Widget>.generate(
                 favs.length,
                     (int index) {
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 1),
                     child: ChoiceChip(

                       padding: EdgeInsets.all(8),

                       label: Text(favs[index],style: TextStyle(
                           color: Colors.black
                       ),),
                       selected: false,
                       selectedColor: mainBlue,
                       backgroundColor: Colors.white,


                       onSelected: (bool selected) {


                       },
                     ),
                   );
                 },
               ).toList(),
             ),

             SizedBox(
               height: 65,
             ),

             Text("To Do",style: TextStyle(
                 fontSize: 27,
                 fontWeight: FontWeight.bold
             ),),


             Container(
               decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
               ),

                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                     children: [

                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Container(
                           height: 45,
                           width: 60,
                           decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.2)
                           ),
                           child: Center(
                              child: Icon(Icons.person_outline_outlined,color: Colors.red,),
                           ),
                         ),
                       ),

                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Fill Your personal Information"),
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Icon(
                           Icons.arrow_forward_ios_sharp
                         ),
                       )


                     ],
                  ),
                ),
             ),
             SizedBox(
               height: 16,
             ),
             Container(
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10)
               ),

               child: Padding(
                 padding: const EdgeInsets.all(0.0),
                 child: Row(
                   children: [

                     Padding(
                       padding: const EdgeInsets.all(14.0),
                       child: Container(
                         height: 45,
                         width: 60,
                         decoration: BoxDecoration(
                             color: Colors.green.withOpacity(0.2)
                         ),
                         child: Center(
                           child: Icon(Icons.upload_file_outlined,color: Colors.green,),
                         ),
                       ),
                     ),

                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Complete uploading your docs"),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Icon(
                           Icons.arrow_forward_ios_sharp
                       ),
                     )


                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 16,
             ),
             Container(
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10)
               ),

               child: Padding(
                 padding: const EdgeInsets.all(0.0),
                 child: Row(
                   children: [

                     Padding(
                       padding: const EdgeInsets.all(14.0),
                       child: Container(
                         height: 45,
                         width: 60,
                         decoration: BoxDecoration(
                             color: Colors.blue.withOpacity(0.2)
                         ),
                         child: Center(
                           child: Icon(Icons.wallet,color: Colors.blue,),
                         ),
                       ),
                     ),

                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Make payments to secure your spot"),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Icon(
                           Icons.arrow_forward_ios_sharp
                       ),
                     )


                   ],
                 ),
               ),
             ),

             SizedBox(
               height: 65,
             ),


             RichText(text: TextSpan(text:"Trending",style: TextStyle(
                 fontSize: 27,
                 fontWeight: FontWeight.bold,
                 color: mainBlue
             ),
                 children: [
                   TextSpan(text:" Universities",style: TextStyle(
                       fontSize: 27,
                       fontWeight: FontWeight.bold,
                       color: mainYellow
                   )
                   ),]
             )),


             Container(
               height: SizeConfig.screenHeight!*0.3,
               child:
               ListView.builder(
                 scrollDirection: Axis.horizontal,

                 itemCount: 4,
                 itemBuilder: (

                     d,index){
                   return universityView();
                 },
               ),
             ),

             SizedBox(
               height: 30,
             ),

             RichText(text: TextSpan(text:"Trending",style: TextStyle(
                 fontSize: 27,
                 fontWeight: FontWeight.bold,
               color: mainBlue
             ),
               children: [
                 TextSpan(text:" Scholarship",style: TextStyle(
                     fontSize: 27,
                     fontWeight: FontWeight.bold,
                   color: mainYellow
                 )
               ),]
             )),


             Container(
               height: SizeConfig.screenHeight!*0.29,
               child:
               ListView.builder(
                 scrollDirection: Axis.horizontal,

                 itemCount: 4,
                   itemBuilder: (

                   d,index){
                   return scholarshipView();

               },
                ),
             ),







           ],
        ),
      ),
    ),
  );
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
                     color: Colors.green.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(13)
                    )
                  ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Full-Funded",style: TextStyle(
                      color: Colors.green,fontWeight: FontWeight.bold
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
                          Text("Stanford University",style: TextStyle(
                             fontWeight: FontWeight.bold,
                            color: mainBlue,
                            fontSize: 17
                          ),),
                          Text("Country - USA",)
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
                         Text("Bachelor, Masters, Phd",style: TextStyle(
                             fontWeight: FontWeight.w400,
                             color: mainBlue,
                             fontSize: 17
                         ),),

                         SizedBox(
                           height: 6,
                         ),
                         Text("Rockafeller Foundation")
                       ],
                     ),
                   ))

                 ],
               ),
             ),
             Spacer(),


             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
               child: Row(
                 children: [

Icon(Icons.calendar_month_outlined,color: Colors.red,),
                   Expanded(child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Deadline 12 Jan 2022",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.red,
                         fontSize: 15
                     ),),
                   )),

                   Container(
                     decoration: BoxDecoration(
                         color: mainBlue,
                         borderRadius: BorderRadius.circular(5

                         )
                     ),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 4),
                       child: Text("Apply",style: TextStyle(
                           color: mainYellow,fontWeight: FontWeight.normal
                       ),),
                     ),
                   ),



                 ],
               ),
             ),

           ],
        ),

      ),
    );
  }



  Widget universityView(){
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
                    color:mainYellow,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("USA",style: TextStyle(
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
                        Text("Stanford University",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainBlue,
                            fontSize: 17
                        ),),
                        Text("Join Fellow 240+ Africans",style: TextStyle(
                           color: Colors.green,
                          fontWeight: FontWeight.bold
                            ,fontSize: 12
                        ),)
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
                        Text("Stanford University, officially Leland Stanford Junior University, is a private research university in Stanford, California. The campus occupies 8,180 acres, among the largest in the United States, and enrolls over 17,000 students. "
                            "Stanford is considered among the most prestigious universities in the world",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,

                            color: mainBlue,
                            fontSize: 13
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [

                             Container(



                               decoration:BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: mainBlue,width: 1)
                               ) ,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10),

                                 child: CachedNetworkImage(
                                   fit: BoxFit.cover,
                                   imageUrl: "https://www.mercurynews.com/wp-content/uploads/2021/10/SJM-L-CLOSTANRUN-1025-1.jpg?w=1024",

                                 ),
                               ),
                               height: (SizeConfig.screenWidth!*.8)/4,
                               width: (SizeConfig.screenWidth!*.8)/4,
                             ),
                             Container(



                               decoration:BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: mainBlue,width: 1)
                               ) ,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10),

                                 child: CachedNetworkImage(
                                   fit: BoxFit.cover,
                                   imageUrl: "https://images.shiksha.com/mediadata/images/1533535408phpqBtlZX.jpeg",

                                 ),
                               ),
                               height: (SizeConfig.screenWidth!*.8)/4,
                               width: (SizeConfig.screenWidth!*.8)/4,
                             ),
                             Container(



                               decoration:BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: mainBlue,width: 1)
                               ) ,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10),

                                 child: CachedNetworkImage(
                                   fit: BoxFit.cover,
                                   imageUrl: "https://money-assets.money.com/mcp/2020/profile/243744.jpg",

                                 ),
                               ),
                               height: (SizeConfig.screenWidth!*.8)/4,
                               width: (SizeConfig.screenWidth!*.8)/4,
                             ),
                           ],
                        )


                      ],
                    ),
                  ))

                ],
              ),
            ),
            Spacer(),




          ],
        ),

      ),
    );
  }

}