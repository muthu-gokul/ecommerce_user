
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';



class OrderNoDetails extends StatefulWidget {
  const OrderNoDetails({Key? key}) : super(key: key);

  @override
  _OrderNoDetailsState createState() => _OrderNoDetailsState();
}

class _OrderNoDetailsState extends State<OrderNoDetails> {
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
              backgroundColor: Color(0xffE7ECEF),
              body: Container(
                height: height,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: tn.primaryColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5,),
                          Container(
                            width: SizeConfig.screenWidth,
                            margin:  EdgeInsets.only(left:5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      IconButton(onPressed: (){
                                        Navigator.pop(context,);
                                      },
                                        icon: SvgPicture.asset('assets/login/backward-01.svg',width:25,),
                                        //   icon: Icon(Icons.menu,color: Colors.white,size: 30,),
                                      ),
                                      Text('Order # : 234567766',style: ts16(text2),)
                                    ],
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child:   Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Image.asset('assets/logo.png',width:28,),
                                        ),
                                        Text('Nov-14-2021',style: TextStyle(fontFamily: 'RR',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),)
                                      ],
                                    )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                                width:width*0.95,
                                height: 45,
                                alignment: Alignment.center,
                                child: CompanySettingsTextField(hintText: "Search Product", img: "assets/search.png")
                           ),
                        ],
                      ),
                    ),
                   SizedBox(height:10,),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: width*0.90,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    height:90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffffffff),
                    ) ,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: width*0.75,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              // border: Border.all(color: Color(0xffEBEBEB)),
                              color: Color(0xffDCDCDC),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: width*0.4,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              // border: Border.all(color: Color(0xffEBEBEB)),
                              color: Color(0xffEFBD55),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: width*0.95,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:30 ,
                                  height:30 ,
                                  decoration: BoxDecoration(
                                    //   color: Color(0xffE8485A),
                                      color: Color(0xffEFBD55),
                                      shape: BoxShape.circle,
                                    border: Border.all(color: text2,width: 2)
                                  ),
                                  child: Icon(Icons.menu,color: Colors.white,size: 10,),
                                ),
                                Container(
                                  width:30 ,
                                  height:30 ,
                                  decoration: BoxDecoration(
                                    //   color: Color(0xffE8485A),
                                      color: Color(0xffEFBD55),
                                      shape: BoxShape.circle,
                                      border: Border.all(color: text2,width: 2)
                                  ),
                                  child: Icon(Icons.menu,color: Colors.white,size: 10,),
                                ),
                                Container(
                                  width:25 ,
                                  height:25 ,
                                  decoration: BoxDecoration(
                                    //   color: Color(0xffE8485A),
                                      color:text2,
                                      shape: BoxShape.circle,
                                      border:Border.all(color:Color(0xffDCDCDC) ,width: 2)
                                  ),
                                ),
                                Container(
                                  width:25 ,
                                  height:25 ,
                                  decoration: BoxDecoration(
                                    //   color: Color(0xffE8485A),
                                      color:text2,
                                      shape: BoxShape.circle,
                                      border:Border.all(color:Color(0xffDCDCDC) ,width: 2)
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          width: width*0.85,
                          bottom: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Confirmed',style:TextStyle(color: Color(0xffEFBD55),fontSize: 14,fontFamily:'RR',)),
                              Text('Cooking',style:TextStyle(color: Color(0xffBFBFBF),fontSize: 14,fontFamily:'RR',)),
                              Text('Ontheway',style:TextStyle(color: Color(0xffBFBFBF),fontSize: 14,fontFamily:'RR',)),
                              Text('Delivered',style:TextStyle(color: Color(0xffBFBFBF),fontSize: 14,fontFamily:'RR',)),
                            ],
                          ),
                        ),
                        ],
                    ),
                  ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        height: 300,
                        width:width*0.95,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: 7,
                            itemBuilder: (ctx,i){
                          return  Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: width*0.95,
                            height:60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xffffffff),
                            ) ,
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 30),
                                    width: width*0.45,
                                    child: Text('Tomato Country',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 14),),
                                  ),

                                  Container(
                                    width: width*0.20,
                                    child: Text.rich(
                                      TextSpan(
                                        text: '2',style: TextStyle(fontFamily: 'RB',fontSize: 14,color:text1), // default text style
                                        children: [
                                          TextSpan(text: 'kg', style: TextStyle(fontFamily: 'RR',fontSize: 12,color:text1.withOpacity(0.8))),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: width*0.30,
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text( 'Rs.23.00', style: TextStyle(fontSize: 14,fontFamily: 'RB',color:tn.primaryColor,),),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                        ),
                    ),
                     SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        // margin: EdgeInsets.all(20),
                        //   color: Colors.red,
                          width: width*0.8,
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text('Price Details',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff878787),fontWeight: FontWeight.w600),),
                            ),
                            SizedBox(height: 15,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Price (1 items)',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff2E2E2D),),),
                                  Text('₹3,250',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff2E2E2D),),)
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Discount',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff2E2E2D),),),
                                  Text('- ₹1,051',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: tn.primaryColor),)
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Delivery Charges',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff2E2E2D),),),
                                  Text('FREE',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: tn.primaryColor,),)
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total Amount',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0xff2E2E2D),fontWeight: FontWeight.w600),),
                                  Text('₹2,199',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff2E2E2D),fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Text('You will save ₹1,050 on this order',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: tn.primaryColor,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar:  Container(
                width: SizeConfig.screenWidth,
                // height:_keyboardVisible?0:  70,
                height: 65,
                decoration: BoxDecoration(
                    color: Color(0XFFF93737),
                    // color: Color(0xFF787878).withOpacity(0.1),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF787878).withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 25,
                        offset: Offset(0, 0), // changes position of shadow
                      )
                    ]
                ),
                child: Stack(
                  children:
                  [
                    Container(
                      width:  SizeConfig.screenWidth,
                      padding: EdgeInsets.only(left: 25,right: 25),
                      height: 65,
                     alignment: Alignment.center,
                     child: Text('Cancel this Order',style: ts16(text2,fontfamily: 'RB'),),
                    )
                  ],
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