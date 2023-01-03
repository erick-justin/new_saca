

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_saca/utilities/colors.dart';
import 'package:new_saca/utilities/sizeConfig.dart';

class ExplorePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExplorePageState();
  }

}

class ExplorePageState extends State<ExplorePage>{
  List  favs = ['Engineering',"Art","Business","Accounting","Finance","Medicine","Computer & IT"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      children: [
        Container(

          decoration: const BoxDecoration(
              color: mainBlue,
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))
          ),

          child: Column(
             children: [
               SizedBox(
                 height: AppBar().preferredSize.height,
               ),
               Padding(
                 padding: const EdgeInsets.all(32.0),
                 child: TextField(
                   // controller: phone,
                   decoration:  InputDecoration(
                       hintText: "search",
                       fillColor: Colors.white,
                       filled: true,
                       prefixIcon: const Icon(Icons.search,color: mainBlue,),


                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(
                             color: mainBlue
                         ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(
                             color: mainBlue
                         ),
                       )

                   ),

                   onChanged: (phone) {

                   },
                 ),
               ),

             ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [







const SizedBox(
  height: 16,
),
                  RichText(text: const TextSpan(text:"Saca",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: mainBlue
                  ),
                      children: [
                        TextSpan(text:" Countries",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: mainYellow
                        )
                        ),]
                  )),


                  Container(
                    height: SizeConfig.screenHeight!*0.2,
                    width: SizeConfig.screenWidth,
                    child:
                  Row(
                     children: [
                       Expanded(
                         child: Column(

                           children: [

                           countryView(),countryView()
                         ],
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         ),

                       ),
                       Expanded(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                           countryView(),countryView()
                         ],),
                       )
                     ],
                  )
                  ),




                       const SizedBox(
    height: 24,
    ),

    RichText(text: const TextSpan(text:"Saca",style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: mainBlue
    ),
    children: [
    TextSpan(text:" Courses",style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: mainYellow
    )
    ),]
    )),


    Container(
    height: SizeConfig.screenHeight!*0.27,
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


                  const SizedBox(
                    height: 30,
                  ),

                  RichText(text: const TextSpan(text:"Trending",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: mainBlue
                  ),
                      children: [
                        TextSpan(text:" Universities",style: TextStyle(
                            fontSize: 25,
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
                  )




                ],
              ),
            ),
          ),
        ),
      ],
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
            const Spacer(),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
              child: Row(
                children: [

                  const Icon(Icons.calendar_month_outlined,color: Colors.red,),
                  const Expanded(child: Padding(
                    padding: EdgeInsets.all(8.0),
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
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 4),
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
                decoration: const BoxDecoration(
                    color:mainYellow,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13)
                    )
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
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
                        const Text("Stanford University",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainBlue,
                            fontSize: 17
                        ),),
                        const Text("Join Fellow 240+ Africans",style: TextStyle(
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
                        const Text("Stanford University, officially Leland Stanford Junior University, is a private research university in Stanford, California. The campus occupies 8,180 acres, among the largest in the United States, and enrolls over 17,000 students. "
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
            const Spacer(),




          ],
        ),

      ),
    );
  }



  Widget countryView(){
       return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(


        width:SizeConfig.screenWidth!*.8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: mainBlue,width: 1
            )


        ),

        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [

                    Container(
                      height: 40,
                      width: 40,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: mainBlue,width: 1)
                      ) ,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),

                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: "https://cdn.britannica.com/42/3842-050-68EEE2C4/Flag-Russia.jpg",

                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Russia",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: mainBlue,
                              fontSize: 14
                          ),),
                          const Text("123 Universities",style: TextStyle(
                             fontSize: 11
                          ),)
                        ],
                      ),
                    ))

                  ],
                ),
              ),







            ],
          ),
        ),

      ),
    );

  }

}