
import 'package:ecommerce_user/model/orderedReceivedModel.dart';
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/pages/Profile/myProfileEdit.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuperCoins extends StatefulWidget {

  @override
  _SuperCoinsState createState() => _SuperCoinsState();
}

class _SuperCoinsState extends State<SuperCoins> {
  @override
  late  double width,height,width2,height2;

  List<NewOrderReceivedModel> litems = [
    NewOrderReceivedModel(name: "500 super coins",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"1134" ,),
    NewOrderReceivedModel(name: "500 super coins",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"2823" ,),
    NewOrderReceivedModel(name: "500 super coins",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"2823" ,),
    NewOrderReceivedModel(name: "500 super coins",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"2823" ,),
    NewOrderReceivedModel(name: "500 super coins",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"2823" ,),

  ];
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
                height:400 ,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                   Container(
                     width: width,
                     height: 250,
                     color: Color(0XFFEBEBEB),
                     alignment: Alignment.topCenter,
                     child:CustomAppBar(title: "Super Coins",),
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
                              gradient: LinearGradient(
                                  colors: [Color(0XFF5404B7), Color(0XFF5404B7).withOpacity(0.7)]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:[
                              BoxShadow(
                                color: Color(0XFF5404B7).withOpacity(0.5),
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
                               SizedBox(height: 50,),
                              Text('1200',style:ts18(Color(0XFFFFD000),fontfamily: 'RB',),),
                              SizedBox(height: 10,),
                              Container(
                                width: SizeConfig.screenWidth!-100,
                                child: Text("Super coins you  have",
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
              Expanded(
                child: ListView.builder(
                  itemCount: litems.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          width: width,
                          //height: 85,
                          margin: EdgeInsets.only(left: 10.0,right: 10.0,),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color:text1.withOpacity(0.2),),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child:Text('${litems[i].name}',style: TextStyle(fontFamily: 'RM',fontSize: 16,color: text1,),)
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Container(
                                            child:Text('Order id :',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:text1.withOpacity(0.9),),),
                                          ),
                                          Text('${litems[i].id}',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:text1.withOpacity(0.9),),)
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Container(
                                            child:Text('28 Items  ',style: TextStyle(fontFamily: 'RR',fontSize: 13,color:text1.withOpacity(0.5),),),
                                          ),
                                          Text('${litems[i].amt}',style: TextStyle(fontFamily: 'RM',fontSize: 15,color:Color(0XFF5404B7),),)
                                        ],
                                      ),

                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                      width:100,
                                      height:30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(color: Color(0XFFF3BAA38),),
                                        color:Color(0XFFEBF5EA),
                                      ),
                                      alignment:Alignment.center,
                                      child:Text('Delivered',style: TextStyle(fontFamily: 'RM',fontSize: 14,color: Color(0XFFF3BAA38),),)
                                  ),

                                  SizedBox(width: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 10,bottom: 10),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              // Container(
                              //   child:Text('4.5 KM ',style: TextStyle(fontFamily: 'RR',fontSize: 12,color: th.text1.withOpacity(0.5),),),
                              // ),
                              // SizedBox(width: 10,),
                              Text('5 min ago',style: TextStyle(fontFamily: 'RR',fontSize: 12,color:text1.withOpacity(0.5),),)
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
