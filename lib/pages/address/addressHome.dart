

import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'addressAddNew.dart';

class AddressHomePage extends StatefulWidget {
  @override
  _AddressHomePageState createState() => _AddressHomePageState();
}

class _AddressHomePageState extends State<AddressHomePage>with TickerProviderStateMixin {
  @override
  late TabController _tabController;
  late  double width,height,width2,height2;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3,  vsync: this);
  }
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
          body: Container(
            width: width,
            height: height,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomAppBar(title: "My Address"),
                Flexible(
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (ctx,i){
                      return Container(
                        height: 110,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: grey2
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                       //   mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  height: 34,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                      ),
                                      color: Colors.transparent
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.edit,size: 20,color: grey,),
                                )
                              ],
                            ),
                            Text("Delivery Address",style: ts12(text1,fontfamily: 'RM'),),
                            SizedBox(height: 4,),
                            Container(
                              width: SizeConfig.screenWidth!-50,
                              child: Text("No: 4B/7, Sai Sadan, 1st Floor, MMDA 1st Main Rd, Maduravoyal, Chennai, Tamil Nadu 600095",
                                style: ts12(text1,fontfamily: 'RR'),textAlign: TextAlign.center,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  height: 30,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                    ),
                                    color: tn.primaryColor1
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddressAddNew()));
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(top: 50,bottom: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: grey2
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



