
import 'package:ecommerce_user/model/orderedReceivedModel.dart';
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/pages/Profile/myProfileEdit.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewCard extends StatefulWidget {

  @override
  _AddNewCardState createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
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
                  CustomAppBar(title: "Add New Card"),
                  // Flexible(
                  //   child: ListView.builder(
                  //     itemCount: 3,
                  //     shrinkWrap: true,
                  //     itemBuilder: (ctx,i){
                  //       return Container(
                  //         height: 100,
                  //         margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: grey2
                  //         ),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Text("Delivery Address",style: ts12(text1,fontfamily: 'RM'),),
                  //             SizedBox(height: 7,),
                  //             Container(
                  //               width: SizeConfig.screenWidth!-50,
                  //               child: Text("No: 4B/7, Sai Sadan, 1st Floor, MMDA 1st Main Rd, Maduravoyal, Chennai, Tamil Nadu 600095",
                  //                 style: ts12(text1,fontfamily: 'RR'),textAlign: TextAlign.center,
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Image.asset("assets/cardft.png",fit: BoxFit.cover,width: 300,),

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
}
