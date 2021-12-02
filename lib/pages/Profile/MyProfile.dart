
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/pages/Profile/myProfileEdit.dart';
import 'package:ecommerce_user/pages/Profile/superCoin.dart';
import 'package:ecommerce_user/pages/pancard/panCard.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../card/card.dart';

class MyProfile extends StatefulWidget {
  VoidCallback voidCallback;
  MyProfile({required this.voidCallback});

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  late  double width,height,width2,height2;
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
      child:Consumer<ThemeNotifier>(
        builder:(ctx,tn,child)=> Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: SizeConfig.screenWidth,
                height:SizeConfig.screenHeight!-400 ,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                   Container(
                     width: width,
                     height: 250,
                     color: Color(0XFFEBEBEB),
                     alignment: Alignment.topCenter,
                     child:Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         CustomAppBar(title: "My Profile",),
                         GestureDetector(
                           onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MyProfileEdit()));
                           },
                           child: Padding(
                             padding: EdgeInsets.only(right: 8.0),
                             child: Icon(Icons.edit,color:tn.primaryColor,),
                           ),
                         )
                       ],
                     ),
                   ),
                    Positioned(
                      top: 80,
                      // left: 22,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: SizeConfig.screenWidth!*0.9,
                          height: 300,
                          decoration: BoxDecoration(
                            color: tn.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:[
                              BoxShadow(
                                color: tn.primaryColor.withOpacity(0.5),
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:80,
                                height: 80,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.white)
                                ),
                                child: Image.asset("assets/profile.png",width: 40,height: 40,),
                              ),
                              SizedBox(height: 10,),
                              Text('Balasubramaniyan',style:ts14(text2,fontfamily: 'RM',),),
                              SizedBox(height: 10,),
                              Text('90923-22264',style:ts14(text2,fontfamily: 'RR',),),
                              SizedBox(height: 10,),
                              Icon(Icons.add_location_outlined,color:text2,size: 40,),
                              SizedBox(height: 5,),
                              Text('Delivery Address',style:ts14(text2,fontfamily: 'RB',),),
                              SizedBox(height: 10,),
                              Container(
                                width: SizeConfig.screenWidth!-100,
                                child: Text("No: 4B/7, Sai Sadan, 1st Floor, MMDA 1st Main Rd, Maduravoyal, Chennai, Tamil Nadu 600095",
                                  style: ts14(text2,fontfamily: 'RR'),textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 370,
                child: SingleChildScrollView(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runSpacing: 30,
                    spacing: 40,
                    children: [
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('My Order',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('My Wishlist',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('My Wishlist',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('My Review',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('Qus & Ans',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('My Address',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CardDetails()));
                        },
                        child: Container(
                          width: 90,
                          child: Column(
                            children: [
                              Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                              SizedBox(height: 5,),
                              Text('My Cards',style:ts14(text1,fontfamily: 'RR',),),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>PanCardDetails()));
                        },
                        child: Container(
                          width: 90,
                          child: Column(
                            children: [
                              Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                              SizedBox(height: 5,),
                              Text('Pan Card',style:ts14(text1,fontfamily: 'RR',),),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SuperCoins()));
                        },
                        child: Container(
                          width: 90,
                          child: Column(
                            children: [
                              Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                              SizedBox(height: 5,),
                              Text('Super Coins',style:ts14(text1,fontfamily: 'RR',),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            Icon(Icons.add_location_outlined,color:tn.primaryColor,size: 40,),
                            SizedBox(height: 5,),
                            Text('Logout',style:ts14(text1,fontfamily: 'RR',),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
