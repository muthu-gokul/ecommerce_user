
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/linearProgressBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';



class DeliveryDetails extends StatefulWidget {
  const DeliveryDetails({Key? key}) : super(key: key);

  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  @override
  late  double width,height,width2,height2,wid3;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-255;
    wid3=width*0.8;
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          height: 60,
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

                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Container(
                                height: 170,
                                //color: Colors.red,
                              ),
                              Container(
                              //  height: height2,
                                // color: Colors.red,
                                margin: EdgeInsets.only(bottom: 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerRight,
                                      width: 70,

                                      padding: EdgeInsets.only(left: 20),
                                      child: Column(
                                        //  crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          trackCircle(true, 1),
                                          dash(1),
                                          trackCircle(true, 2),
                                          dash(0.5),
                                          trackCircle(false, 3),
                                          dash(0.0),
                                          trackCircle(false, 4),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth!-70,
                                      child: Column(
                                        children: [
                                          deliveryDetails('Ordered', true),
                                          SizedBox(height: 5,),
                                          deliveryDetails('Shipped', true),
                                          SizedBox(height: 5,),
                                          deliveryDetails('Out of delivery', false),
                                          SizedBox(height: 5,),
                                          deliveryDetails('Delivery', false),
                                        ],
                                      ),
                                      //color: Colors.blue,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
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



  trackCircle(bool isCrossed,int index){
    return Container(
      width:25 ,
      height:25 ,
      alignment: Alignment.center,
      decoration:isCrossed? BoxDecoration(
          color: trackColor,
          shape: BoxShape.circle,
          border: Border.all(color: text2,width: 0)
      ):BoxDecoration(
          color:text2,
          shape: BoxShape.circle,
          border:Border.all(color:Color(0xffDCDCDC) ,width: 1.5)
      ),
      child: isCrossed?Icon(Icons.done,color: Colors.white,size: 15,):
      Text("$index",style: ts14(Color(0xffDCDCDC)),),
    );
  }


  dash(double percentage){
    return RotatedBox(
      quarterTurns: 1,
      child: LinearPercentIndicator(
        leading: Container(),
        trailing: Container(),
        padding: EdgeInsets.only(left: 8,right: 8),
        //width: (height2*0.17),
        width: 100,
        lineHeight: 3,
        percent: percentage,
        progressColor: trackColor,
        backgroundColor: Color(0xffEBEBEB),
      ),
    );
  }

  trackText(String title,String date,bool isCrossed){
    return  Column(
      children: [
        Text(title,style: ts18(isCrossed?trackColor:Color(0xff8C8C8C),fontsize: 10,fontfamily: 'RM'),),
        Text(date,style: ts18(trackTextColor,fontsize: 10,fontfamily: 'RM'),),
      ],
    );
  }

  deliveryDetails(String title,bool isCrossed){
    return Container(
      height: 120,
      width: SizeConfig.screenWidth!-70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4,),
          RichText(
            text: TextSpan(
              text: '$title  ',
              style: ts12(isCrossed?text1:trackTextColor,fontfamily: 'RM'),
              children: <TextSpan>[
                TextSpan(text: '20-11-2021', style: ts18(isCrossed?grey:trackTextColor,fontsize: 11,fontfamily: 'RM')),
              ],
            ),
          ),
          SizedBox(height: 4,),
          Text("Your order has been received to 9.00AM",
            style: ts12(trackTextColor.withOpacity(isCrossed?1:0.5)),
          ),
          SizedBox(height: 4,),
          Text("Amirtha Super Market",
            style: ts12(trackTextColor.withOpacity(isCrossed?1:0.5)),
          ),
          SizedBox(height: 4,),
          Text("Your order has been received to 9.00AM",
            style: ts12(trackTextColor.withOpacity(isCrossed?1:0.5)),
          ),
          SizedBox(height: 4,),
          Text("Amirtha Super Market",
            style: ts12(trackTextColor.withOpacity(isCrossed?1:0.5)),
          ),
        ],
      ),
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