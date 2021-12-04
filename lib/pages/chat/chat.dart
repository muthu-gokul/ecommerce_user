
import 'package:ecommerce_user/model/chatModel.dart';
import 'package:ecommerce_user/model/profileModel.dart';
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/pages/address/addressHome.dart';
import 'package:ecommerce_user/pages/giftCoupons/giftCouponsPage.dart';
import 'package:ecommerce_user/pages/profile/myProfileEdit.dart';
import 'package:ecommerce_user/pages/Profile/superCoin.dart';
import 'package:ecommerce_user/pages/pancard/panCard.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/circle.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../card/card.dart';

class ChatScreen extends StatefulWidget {
  VoidCallback voidCallback;
  ChatScreen({required this.voidCallback});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> list=[
    ChatModel(msg: "Hi Victor I am Jacob Jones", isReceived: true),
    ChatModel(msg: "Hi Victor I am Jacob Jones", isReceived: false),
    ChatModel(msg: "Hi Victor I am Jacob Jones", isReceived: true),
    ChatModel(msg: "Hi Victor I am Jacob Jones", isReceived: false),
  ];
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
          body: Stack(
            children: [
              Container(
                height: height,
                width: width,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomAppBar(
                      title: "    Victor Joseph",
                      prefix: Row(
                        children: [

                          IconButton(onPressed: (){
                            widget.voidCallback();
                            //  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddressHomePage()));
                          },
                            icon: Image.asset('assets/menu.png',width:20,color: Colors.black,),
                            //   icon: Icon(Icons.menu,color: Colors.white,size: 30,),
                          ),
                          Circle(hei: 35, color: tn.primaryColor2),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("   Order #: 3232323",
                          style: ts16(text1),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Expanded(
                      child: Container(
                        color: Color(0xffFCFCFC),
                        padding: EdgeInsets.only(top: 20,),
                        child: ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (ctx,i){
                            return Padding(
                              padding: EdgeInsets.only(top: 0,bottom: 20),
                              child:list[i].isReceived? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10,),
                                  Circle(hei: 30, color: tn.primaryColor2),
                                  SizedBox(width: 10,),
                                  Container(
                                      padding:EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                                      //  alignment:Alignment.centerLeft,
                                      constraints:BoxConstraints(
                                        maxWidth: width*0.8,
                                        // minWidth: 100
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0xffF8F8F8)
                                        // color: Colors.red
                                      ),
                                      child: Text("${list[i].msg}",
                                        style: ts18(indicatorColor,fontsize: 13),
                                      )
                                  )

                                ],
                              ): Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  Container(
                                      padding:EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                                      //  alignment:Alignment.centerLeft,
                                      constraints:BoxConstraints(
                                        maxWidth: width*0.8,
                                        // minWidth: 100
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0xff97B06C)
                                        // color: Colors.red
                                      ),
                                      child: Text("${list[i].msg}",
                                        style: ts18(Colors.white,fontsize: 13),
                                      )
                                  ),
                                  SizedBox(width: 10,),
                                  Circle(
                                      hei: 30,
                                      color: Colors.transparent,
                                      widget: Center(
                                        child: Icon(Icons.done,size: 15,color: tn.primaryColor2,),
                                      ),
                                  ),
                                  SizedBox(width: 10,),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                child: Container(
                  height: 60,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(0,0),
                        blurRadius: 15
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: width-70,
                        margin: EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                          color: grey2,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          style: ts14(text1),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            hintText:"Type a message",
                            hintStyle: ts14(grey),
                            contentPadding: EdgeInsets.only(left: 20,top: 12),
                            suffixIcon: Icon(Icons.camera)
                          ),
                        ),
                      ),
                      Icon(Icons.send,color: tn.primaryColor1,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
