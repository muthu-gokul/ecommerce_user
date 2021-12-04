
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/innerShadowTBContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'orderNoPage.dart';



class MYOrderDetails extends StatefulWidget {
  VoidCallback voidCallback;
  MYOrderDetails({required this.voidCallback});

  @override
  _MYOrderDetailsState createState() => _MYOrderDetailsState();
}

class _MYOrderDetailsState extends State<MYOrderDetails> {
  @override
  late  double width,height,width2,height2;

  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    SizeConfig().init(context);
    return SafeArea(
        child: Consumer<ThemeNotifier>(
        builder:(ctx,tn,child)=> Stack(
          children: [
            Scaffold(
              backgroundColor: Color(0xffffffff),
              body: Container(
                height: height,
                width: width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: tn.primaryColor
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Container(
                              width: SizeConfig.screenWidth,
                              margin:  EdgeInsets.only(left:5),
                              child: IconButton(onPressed: (){
                                widget.voidCallback();
                                //  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddressHomePage()));
                              },
                                icon: Row(
                                  children: [
                                    Image.asset('assets/menu.png',width:20,),
                                    SizedBox(width: 10,),
                                    Text('My Order',style: ts16(text2),)
                                  ],
                                ),
                                //   icon: Icon(Icons.menu,color: Colors.white,size: 30,),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width:width*0.8,
                                      height: 45,
                                      alignment: Alignment.centerLeft,
                                      child: CompanySettingsTextField(hintText: "Search Product", img: "assets/search.png")
                                  ),
                                  Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: tn.primaryColor1,
                                      ) ,
                                      child:   Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/Filter.png',width: 20,),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                     // SizedBox(height:20,),
                      Align(
                        alignment: Alignment.center,
                        child: InnerShadowTBContainer(
                          height: SizeConfig.screenHeight!-154,
                          width:width*0.95,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: 7,
                              itemBuilder: (ctx,i){
                                return Column(
                                  children: [
                                    // SizedBox(height: 20,),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OrderNoDetails()));
                                      },
                                      child: Container(
                                        width: width,
                                        height: 85,
                                        margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 15),
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color:text1.withOpacity(0.2),),
                                        ),
                                        child: Column(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width:SizeConfig.screenWidth!-74,
                                                    child:Row(
                                                      children: [
                                                        Text('Rs.2,532.00',style: TextStyle(fontFamily: 'RM',fontSize: 16,color: text1,),),
                                                        Spacer(),
                                                        Row(
                                                          children: [
                                                            Icon(Icons.menu,color:tn.primaryColor,size: 20,),
                                                            SizedBox(width: 2,),
                                                            Text('Nov-14-2021',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:text1.withOpacity(0.5),),),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                ),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      child:Text('Order id : ',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:text1.withOpacity(0.9),),),
                                                    ),
                                                    Text.rich(
                                                      TextSpan(
                                                        text: '32352342 ',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:text1.withOpacity(0.9),), // default text style
                                                        children: [
                                                          TextSpan(text: '   Delivery ', style: TextStyle(fontFamily: 'RR',fontSize: 12,color:tn.primaryColor)),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5,),
                                                Container(
                                                  width:SizeConfig.screenWidth!-74,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        child:Text('28 Items  ',style: TextStyle(fontFamily: 'RI',fontSize: 13,color:text1.withOpacity(0.5),),),
                                                      ),
                                                      Text('View Product',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:tn.primaryColor),),
                                                      Spacer(),
                                                      Text('Reorder',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:tn.primaryColor),)
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),

                                            SizedBox(width: 10,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                          }),
                          ),
                      ),
                       SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )

        )
    );
  }
}
addRemoveBtn(Widget icon){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
        color:Color(0xffF5F4F2),
        borderRadius:BorderRadius.circular(5)
    ),
    child: Center(
      child: icon,
    ),
  );
}