

import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/pages/giftCoupons/addGiftCard.dart';
import 'package:ecommerce_user/pages/giftCoupons/shareGiftCard.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/circle.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GiftCouponsPage extends StatefulWidget {
  @override
  _GiftCouponsPageState createState() => _GiftCouponsPageState();
}

class _GiftCouponsPageState extends State<GiftCouponsPage>{
  @override
  late  double width,height,width2,height2;
  int selectedPlan=0;
  int isselect=-1;

  PageController pageController=new PageController(initialPage: 0);

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-30;
    height2=height-16;
    return SafeArea(
      child:Consumer<ThemeNotifier>(
        builder:(ctx,tn,child)=> Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                width: width,
                height: height,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(title: "Gift & Coupons"),
                    Container(
                        width: SizeConfig.screenWidth,
                        height: 50,
                        //  padding: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            giftCouponCateg(0, selectedPlan==0,"Gift Card"),
                            SizedBox(width: 10,),
                            giftCouponCateg(1, selectedPlan==1,"Coupons"),
                          ],
                        ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight!-180,
                      padding: EdgeInsets.only(top: 20),
                      child: PageView(
                        controller: pageController,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SingleChildScrollView(
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              // alignment: WrapAlignment.start,
                              // runAlignment: WrapAlignment.start,
                              // crossAxisAlignment: WrapCrossAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddGiftCard()));
                                  },
                                  child: Container(
                                    width: width2*(0.5)-5,
                                    height: 160,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: borderColor),
                                        color: grey2
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Add new giftcard",style: ts14(text1),)
                                      ],
                                    ),
                                  ),
                                ),
                                for(int i=0;i<20;i++)
                                  Container(
                                    width: width2*(0.5)-5,
                                    height: 160,
                                    margin: EdgeInsets.only(bottom: i==19?80:0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: borderColor),
                                        color: Colors.white
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Circle(
                                              hei: 60,
                                              color: grey2,
                                            ),
                                            SizedBox(height: 7,),
                                            Text("2500.00",style: ts16(text1,fontfamily: 'RB'),),
                                            SizedBox(height: 3,),
                                            Container(
                                              width: width2*(0.35),
                                              child: Text("Get 2% offers on all category",style: ts12(text1),textAlign: TextAlign.center,),
                                            ),
                                            SizedBox(height: 3,),
                                            Text("30-11-2021 / 9.30AM",style: ts10(trackTextColor,fontfamily: 'RM'),)
                                          ],
                                        ),
                                        Positioned(
                                          right: 10,
                                          top: 10,
                                          child: GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ShareGiftCard()
                                                ));
                                              },
                                              child:Icon(Icons.share_outlined,color: grey,)
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              // alignment: WrapAlignment.start,
                              // runAlignment: WrapAlignment.start,
                              // crossAxisAlignment: WrapCrossAlignment.start,
                              children: [

                                for(int i=0;i<20;i++)
                                  Container(
                                    width: width2*(0.5)-5,
                                    height: 170,
                                    margin: EdgeInsets.only(bottom: i==19?80:0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: borderColor),
                                        color: Colors.white
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 12,),
                                        Circle(
                                          hei: 60,
                                          color: grey2,
                                        ),
                                        SizedBox(height: 7,),
                                        Container(
                                          width: width2*(0.35),
                                          child: Text("Get 2% offers on all category",style: ts12(text1),textAlign: TextAlign.center,),
                                        ),
                                        SizedBox(height: 3,),
                                        Spacer(),
                                        Container(
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: borderColor),
                                            color: Color(0xffE1F3AE)
                                          ),
                                          alignment: Alignment.center,
                                          child: Text("Apply",style: ts14(tn.primaryColor1,fontfamily: 'RM'),),
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
                  ],
                ),
              ),
             // bottomNavigationBar:
            ),
            Positioned(
                bottom: 0,
                child: BottomNavi()
            ),
            BottomCenterIcon(
                ontap: (){
                  Navigator.pop(context);
                },
                widget: Icon(Icons.done,color: Colors.white,size: 30,)
            )
          ],
        ),
      ),
    );
  }
 giftCouponCateg(int i,bool isSelect ,String btnText){
    return   GestureDetector(
      onTap: (){

        setState(() {
          selectedPlan=i;
        });
        pageController.animateToPage(selectedPlan, duration: animeDuration, curve: animeCurve);
      },
      child:   AnimatedContainer(
        duration: animeDuration,
        width: (width2*0.5)-5,
        height: 50,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Provider.of<ThemeNotifier>(context,listen: false).primaryColor.withOpacity(isSelect?0.4:0),
            blurRadius: 20,
            offset: Offset(0, 3),
          )
        ],
        ///  border: Border.all(color: Color(0xffE2E2E2),style:BorderStyle.solid ),
          color:isSelect?Provider.of<ThemeNotifier>(context,listen: false).primaryColor:Color(0XFFE7E7E7),
        ) ,
        child: Center(
          child: Text("$btnText", style: ts14(isSelect?Color(0XFFFFFFFF):Color(0XFF6B6B6B),fontfamily: 'RB')),
        ),
      ),
    );
  }

}



