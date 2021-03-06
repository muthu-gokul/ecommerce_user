import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewProductDetails extends StatefulWidget {
  @override
  _ViewProductDetailsState createState() => _ViewProductDetailsState();
}

class _ViewProductDetailsState extends State<ViewProductDetails>with TickerProviderStateMixin {
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
             child: SingleChildScrollView(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Container(
                     height: 80,
                     width: width*0.8,
                     child:Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         GestureDetector(
                           onTap: (){
                             Navigator.pop(context,);
                           },
                           child: Container(
                               width: 40,
                               height: 40,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10.0),
                                   //border: Border.all(color: Color(0xff5D5C51),style:BorderStyle.solid )
                                   color:Color(0xffF1F1F1),
                               ) ,
                               alignment: Alignment.center,
                               child:   Icon(Icons.chevron_left,color: Color(0xff000000 ),size: 25,)
                           ),
                         ),
                         Container(
                           child: Text('Details',style: TextStyle(fontFamily: 'RB',fontSize:16,color: Color(0xff000000)),),
                         ),
                         Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.0),
                               //border: Border.all(color: Color(0xff5D5C51),style:BorderStyle.solid )
                               color:Color(0xffF1F1F1),
                             ) ,
                             alignment: Alignment.center,
                             child:   Icon(Icons.chevron_left,color: Color(0xff000000 ),size: 25,)
                         )
                       ],
                     ),
                   ),
                   SizedBox(height: 10,),
                   Container(
                     width: width*0.9,
                     child:Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           width: 80,
                           height: 30,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25),
                             color:tn.primaryColor,
                           ),
                           alignment: Alignment.center,
                           child: Text('Off 20%',style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'RI',fontWeight: FontWeight.bold),),
                         ),
                         Container(
                           width: 35,
                           height: 35,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.white,
                             boxShadow: [
                               BoxShadow(
                                 color:Color(0xFF000000).withOpacity(0.15),
                                 blurRadius: 10.0, // soften the shadow
                                 spreadRadius: 0.1, //extend the shadow
                                 offset: Offset(
                                   4.0, // Move to right 10  horizontally
                                   4.0, // Move to bottom 10 Vertically
                                 ),
                               )
                             ],
                           ),
                           child: Icon(Icons.favorite,color: tn.primaryColor2,size: 22,),
                         ),
                       ],
                     ),
                   ),
                   Container(
                     alignment: Alignment.topCenter,
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           child: Image.asset('assets/items-list/tomato.png',width: 200,fit: BoxFit.cover,),

                         ),
                         Container(
                           alignment: Alignment.topCenter,
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 child: Text('Tomato Country',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 18),),
                               ),
                               SizedBox(height: 5,),
                               Container(
                                 child: RichText(
                                   text: TextSpan(
                                     text: '1 Kg ',
                                     style: TextStyle(color: Color(0xff000000),fontSize: 13,fontFamily: 'RR'),
                                     children: <TextSpan>[
                                       TextSpan(text: ' 35.00', style: TextStyle(fontSize: 13,fontFamily: 'RR',color: Color(0XFF919191),decoration: TextDecoration.lineThrough)),
                                       TextSpan(text: ' Rs.23.00', style: TextStyle(fontSize: 13,fontFamily: 'RB',color:tn.primaryColor,),),
                                     ],
                                   ),

                                 ),
                               ),
                             ],
                           ),
                         ),
                         SizedBox(height: 15,),
                         Container(
                           width: width*0.9,
                           height: 160,
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             //border: Border.all(color: Color(0xff5D5C51),style:BorderStyle.solid )
                             color:Color(0xffF1F1F1),
                           ) ,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Description',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 16),),
                               SizedBox(height: 5,),
                               Text('tomato, (Solanum lycopersicum), flowering plant of the nightshade family (Solanaceae), cultivated extensively for its edible fruits. ... The fruits are commonly eaten raw in salads, served as a cooked vegetable, used as an ingredient of various prepared dishes, and pickled.',style: TextStyle(fontFamily: 'RR',color: Colors.black,fontSize: 14),),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 30,),
                   Container(
                     width: SizeConfig.screenWidth!*0.9,
                   // height: 200,
                     alignment: Alignment.topCenter,
                     decoration: BoxDecoration(
                         border: Border.all(color: Color(0XFFECECEC))
                     ),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Container(
                           padding: EdgeInsets.only(left: 10,right: 10),
                           child: TabBar(
                               isScrollable: true,
                               controller: _tabController,
                               // give the indicator a decoration (color and border radius)
                               indicatorPadding: EdgeInsets.only(top: 45),
                               indicator: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20.0,),
                                 color: tn.primaryColor1,
                               ),
                              // indicatorSize: TabBarIndicatorSize.tab,
                               indicatorWeight: 6,
                               labelColor: tn.primaryColor,
                               unselectedLabelColor: Color(0XFF262626),
                               unselectedLabelStyle: TextStyle(fontSize: 14,fontFamily: 'RR',),
                               labelStyle: TextStyle(fontSize: 14,fontFamily: 'RR'),
                               tabs: [
                                 Tab(text:"Specifications",),
                                 Tab(text:"Additional Info"),
                                 Tab(text:"View all"),
                               ]
                           ),
                         ),
                         Container(
                            height: SizeConfig.screenHeight!-370,
                            width: SizeConfig.screenWidth!*1,
                           child: TabBarView(
                             controller: _tabController,
                             children: [
                               Container(
                                 alignment: Alignment.topLeft,
                                 width: SizeConfig.screenWidth!*1,
                                 padding: EdgeInsets.only(left: 15,right: 15),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     SizedBox(height: 20,),
                                     Text('General',style: ts18(grey,fontsize: 17),),
                                     Expanded(
                                       child: ListView.builder(
                                         itemCount: 10,
                                         itemBuilder: (ctx,i){
                                           return Row(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(
                                                 width:(SizeConfig.screenWidth!*0.5)-37,
                                                 padding: EdgeInsets.only(top: 8,bottom: 8),
                                                 alignment: Alignment.centerLeft,
                                                 child: Text("Sales Package",style: ts12(grey.withOpacity(0.7)),),
                                               ),
                                               Container(
                                                 width:(SizeConfig.screenWidth!*0.5)-36,
                                                 padding: EdgeInsets.only(top: 8,bottom: 8),
                                                 alignment: Alignment.centerLeft,
                                                 child: Text("Laptop, Power Adaptar",style: ts12(text1),),
                                               ),
                                             ],
                                           );
                                         },
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                               Container(
                                 alignment: Alignment.topLeft,
                                 width: SizeConfig.screenWidth!*1,
                                 padding: EdgeInsets.only(left: 15,right: 15),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     SizedBox(height: 20,),
                                     Text('Information',style: ts18(grey,fontsize: 17),),
                                     Expanded(
                                       child: ListView.builder(
                                         itemCount: 10,
                                         itemBuilder: (ctx,i){
                                           return Row(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(
                                                 width:(SizeConfig.screenWidth!*0.5)-37,
                                                 padding: EdgeInsets.only(top: 8,bottom: 8),
                                                 alignment: Alignment.centerLeft,
                                                 child: Text("Sales Package",style: ts12(grey.withOpacity(0.7)),),
                                               ),
                                               Container(
                                                 width:(SizeConfig.screenWidth!*0.5)-36,
                                                 padding: EdgeInsets.only(top: 8,bottom: 8),
                                                 alignment: Alignment.centerLeft,
                                                 child: Text("Laptop, Power Adaptar",style: ts12(text1),),
                                               ),
                                             ],
                                           );
                                         },
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                               Container(
                                 alignment: Alignment.topLeft,
                                 width: SizeConfig.screenWidth!*1,
                                 padding: EdgeInsets.only(left: 15,right: 15),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     SizedBox(height: 20,),
                                     Text('General',style: ts18(grey,fontsize: 17),),
                                     Expanded(
                                       child: ListView.builder(
                                         itemCount: 10,
                                         itemBuilder: (ctx,i){
                                           return Row(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(
                                                 width:(SizeConfig.screenWidth!*0.5)-37,
                                                 padding: EdgeInsets.only(top: 8,bottom: 8),
                                                 alignment: Alignment.centerLeft,
                                                 child: Text("Sales Package",style: ts12(grey.withOpacity(0.7)),),
                                               ),
                                               Container(
                                                 width:(SizeConfig.screenWidth!*0.5)-36,
                                                 padding: EdgeInsets.only(top: 8,bottom: 8),
                                                 alignment: Alignment.centerLeft,
                                                 child: Text("Laptop, Power Adaptar",style: ts12(text1),),
                                               ),
                                             ],
                                           );
                                         },
                                       ),
                                     )
                                   ],
                                 ),
                               ),

                               /*  Align(
                               alignment:Alignment.topCenter,
                               child: Container(
                                 width: SizeConfig.screenWidth!*1,
                                 child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     SizedBox(height: 20,),
                                     Text('hhhghghg')
                                   ],
                                 ),
                               ),
                             ),
                             Align(
                               alignment:Alignment.topCenter,
                               child: Container(
                                 width: SizeConfig.screenWidth!*1,
                                 child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     SizedBox(height: 20,),
                                         Text('hhhghghg')
                                   ],
                                 ),
                               ),
                             ),*/
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 30,),
                   //
                   // Container(
                   //   width: width*0.80,
                   //   child: Row(
                   //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                   //     children: [
                   //       Container(
                   //           child: Row(
                   //         children: [
                   //           Text('Quantity :',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 16),),
                   //           Container(
                   //             child: RichText(
                   //               text: TextSpan(
                   //                 text: '1 Kg ',
                   //                 style: TextStyle(color: Color(0xff000000),fontSize: 14,fontFamily: 'RR'),
                   //                 children: <TextSpan>[
                   //                   TextSpan(text: ' 35.00', style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF919191),decoration: TextDecoration.lineThrough)),
                   //                   TextSpan(text: ' Rs.23.00', style: TextStyle(fontSize: 14,fontFamily: 'RB',color:tn.primaryColor,),),
                   //                 ],
                   //               ),
                   //
                   //             ),
                   //           ),
                   //         ],
                   //       )),
                   //
                   //       Align(
                   //         alignment: Alignment.center,
                   //         child:  Container(
                   //           height: 36,
                   //           width: width*0.25,
                   //           margin: EdgeInsets.only(left: 15),
                   //           decoration: BoxDecoration(
                   //               color:tn.primaryColor,
                   //               borderRadius:BorderRadius.circular(10)
                   //           ),
                   //           child: Row(
                   //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                   //             children: [
                   //               addRemoveBtn(Icon(Icons.add,color: tn.primaryColor,size: 20,)),
                   //               Text("200",style: TSWhite166,),
                   //               addRemoveBtn(Icon(Icons.remove,color: tn.primaryColor,size: 20,)),
                   //             ],
                   //           ),
                   //         ),
                   //       )
                   //     ],
                   //   ),
                   // ),
                   // SizedBox(height: 30,),
                   // GestureDetector(
                   //   onTap: (){
                   //     Navigator.pop(context,);
                   //   },
                   //   child: Container(
                   //     width: 200,
                   //     height: 50,
                   //     decoration: BoxDecoration(
                   //         color:tn.primaryColor,
                   //         borderRadius:BorderRadius.circular(10)
                   //     ),
                   //     alignment: Alignment.center,
                   //     child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'RR'),),
                   //   ),
                   // ),
                   // SizedBox(height: 50,),
                 ],
               ),
             ),
          ),
        ),
      ),
    );
  }
}






addRemoveBtn(Widget icon){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(5)
    ),
    child: Center(
      child: icon,
    ),
  );
}


