
import 'package:ecommerce_user/model/orderedReceivedModel.dart';
import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/pages/Profile/myProfileEdit.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AddNewCard extends StatefulWidget {

  @override
  _AddNewCardState createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  late  double width,height,width2,height2;
  String? date,month,year;

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-60;
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
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(title: "Add New Card"),
                  Image.asset("assets/cardft.png",fit: BoxFit.cover,width: width2,),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      textField("CARD NUMBER", width2*0.7, 16,regExp: digitRegEx),
                      Spacer(),
                      textField("CVC", 70, 3,regExp: digitRegEx),
                    ],
                  ),
                  SizedBox(height: 10,),
                  textField("CARD HOLDER NAME", width2, null,),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("EXPIRY DATE",style: ts12(text1,fontfamily: 'RB'),)
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButtonHideUnderline(
                        child: Container(
                          width: 60,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: grey2
                          ),
                          padding: EdgeInsets.only(left: 5),
                          child: DropdownButton<String>(

                            isExpanded: true,
                            value: date,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            //elevation: 5,
                            style: ts14(text1),
                            items: <String>[
                              '1',
                              '22',
                              '23',
                              '24',
                              '25',
                              '26',
                              '27',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style:ts14(text1)),
                              );
                            }).toList(),
                            hint:Text(
                              "Date",
                              style: ts14(text1),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                date = value;
                              });
                            },
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: Container(
                          width: width2*0.4,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: grey2
                          ),
                          padding: EdgeInsets.only(left: 5),
                          child: DropdownButton<String>(

                            isExpanded: true,
                            value: month,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            //elevation: 5,
                            style: ts14(text1),
                            items: <String>[
                              'January',
                              'MArch',
                              'May',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style:ts14(text1)),
                              );
                            }).toList(),
                            hint:Text(
                              "Month",
                              style: ts14(text1),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                month = value;
                              });
                            },
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: Container(
                          width: width2*0.3,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: grey2
                          ),
                          padding: EdgeInsets.only(left: 5),
                          child: DropdownButton<String>(

                            isExpanded: true,
                            value: year,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            //elevation: 5,
                            style: ts14(text1),
                            items: <String>[
                              '1333',
                              '2223',
                              '2355',
                              '2444',
                              '2544',
                              '2655',
                              '2755',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style:ts14(text1)),
                              );
                            }).toList(),
                            hint:Text(
                              "Year",
                              style: ts14(text1),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                year = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
             bottomNavigationBar: BottomNavi(),
          ),
           /* Positioned(
                bottom: 0,
                child: BottomNavi()
            ),*/
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
  textField(String hintText,double width,  int? textLength,
      {String regExp='[A-Za-z0-9@., ]'}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(hintText,style: ts12(text1,fontfamily: 'RB'),),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: grey2,
          ),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 10),
          width: width,
          child: TextField(
            textAlign: TextAlign.left,
            maxLines: 1,
            style:TextStyle(fontSize: 16,fontFamily:'RR',color:Color(0xff7F7F7F),),
            inputFormatters: [
              LengthLimitingTextInputFormatter(textLength),
              FilteringTextInputFormatter.allow(RegExp(regExp)),
            ],
            decoration: InputDecoration(
              fillColor: Color(0xffff0000),
              enabledBorder:InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: hintText,
              hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),

              contentPadding: EdgeInsets.symmetric(vertical:10,horizontal: 15),

            ),

          ),
        ),
      ],
    );
  }
}
