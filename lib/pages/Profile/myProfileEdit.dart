import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProfileEdit extends StatefulWidget {

  @override
  _MyProfileEditState createState() => _MyProfileEditState();
}

class _MyProfileEditState extends State<MyProfileEdit> {
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: SizeConfig.screenWidth,
                  height:SizeConfig.screenHeight!-24 ,
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
                           CustomAppBar(title: "My profile",),
                           Padding(
                             padding: EdgeInsets.only(right: 8.0),
                             child: Icon(Icons.edit,color:tn.primaryColor,),
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
                      Positioned(
                        top: 430,
                        width: SizeConfig.screenWidth!*0.85,
                        child: Column(
                          children: [
                            CompanySettingsTextField(
                              hintText: "Aishwariya",
                              img: "",
                              borderRadius: textFieldBR,
                            ),
                            SizedBox(height: 15,),
                            CompanySettingsTextField(
                              hintText: "90923-22264",
                              img: "",
                              borderRadius: textFieldBR,
                            ),
                            SizedBox(height: 15,),
                            Container(
                              alignment: Alignment.centerLeft,
                                child: Text('Delivery Address',style:ts14(text1,fontfamily: 'RB',),)
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  width: SizeConfig.screenWidth!*0.6,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color:Color(0XFFEBEBEB),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Delivery Address',style:ts12(text1,fontfamily: 'RB',),),
                                      Container(
                                        margin: EdgeInsets.only(left: 10,right: 10),
                                        child: Text("No: 4B/7, Sai Sadan, 1st Floor, MMDA 1st Main Rd, Maduravoyal, Chennai, Tamil Nadu 600095",
                                          style: ts12(text1,fontfamily: 'RR'),textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: SizeConfig.screenWidth!*0.2,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color:Color(0XFFEBEBEB),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(Icons.add_location_outlined,color:text1,size: 40,),
                                )

                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
