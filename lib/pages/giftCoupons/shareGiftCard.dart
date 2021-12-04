

import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/circle.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShareGiftCard extends StatefulWidget {
  @override
  _ShareGiftCardState createState() => _ShareGiftCardState();
}

class _ShareGiftCardState extends State<ShareGiftCard>{
  @override
  late  double width,height,width2,height2;

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
                  // crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    CustomAppBar(title: "Share Gift Card"),
                    Container(
                      width: width2*(0.5)-5,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: borderColor),
                          color: Colors.white
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text("Share with your friends get free",style: ts16(text1),textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text("Coupons",style: ts18(tn.primaryColor,fontfamily: 'RB'),textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 20,),
                    CompanySettingsTextField(
                      margin: EdgeInsets.only(top: 10),
                      hintText: "Enter your sender id",
                      img: "",
                      borderRadius: textFieldBR,
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

}



