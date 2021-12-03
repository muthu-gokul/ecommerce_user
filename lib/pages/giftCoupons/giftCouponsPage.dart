

import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
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
  int selectedPlan=-1;
  int isselect=-1;

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
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
                  children: [
                    CustomAppBar(title: "Gift & Coupons"),
                    Container(
                        width: SizeConfig.screenWidth,
                        height: 70,
                        //  padding: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            giftCouponCateg(1, selectedPlan==1,"Gift Card"),
                            SizedBox(width: 10,),
                            giftCouponCateg(2, selectedPlan==2,"Coupons"),
                          ],
                        ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavi(),
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
      },
      child:   Container(
        width: width*0.45,
        height: 50,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Color(0xffE2E2E2),style:BorderStyle.solid ),
          color:isSelect?Provider.of<ThemeNotifier>(context,listen: false).primaryColor:Color(0XFFE7E7E7),
        ) ,
        child: Center(
          child: Text("$btnText", style: ts14(isSelect?Color(0XFFFFFFFF):Color(0XFF6B6B6B),fontfamily: 'RB')),
        ),
      ),
    );
  }

}



