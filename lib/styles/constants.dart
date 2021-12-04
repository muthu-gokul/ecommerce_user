 import 'package:flutter/material.dart';

 String decimalReg=r'^\d+\.?\d{0,2}';

 int phoneNoLength=10;
 int zipcodeLength=6;
 String digitRegEx='[0-9]';
 String alphaSpaceRegEx='[A-Za-z ]';
 String addressRegEx='[A-Za-z0-9-,_/*+()@. ]';
 //String currentDate=DateFormat("dd-MM-yyyy").format(DateTime.now());
 String dbDateFormat="dd-MM-yyyy";

 //var formatCurrency = NumberFormat.currency(locale: 'HI',name: "");


Color yellowColor=Color(0xFF158BCC);
Color bgColor=Color(0xFF4267F6);
Color gridBodyBgColor=Color(0xFFFFFFFF);
Color grey=Color(0xFF787878);
Color lightGrey=Color(0xffF8F8FA);
 Color addNewTextFieldBorder=Color(0xFFCDCDCD);
const Color addNewTextFieldFocusBorder=Color(0xFF6B6B6B);
 Color disableColor=Color(0xFFe8e8e8);
 Color uploadColor=Color(0xFFC7D0D8);
 Color indicatorColor=Color(0xFF1C1C1C);
 Color text1=Color(0xFF464646);
 Color text2=Color(0xFFFFFFFF);
 Color grey2=Color(0xFFEBEBEB);
 Color trackColor=Color(0xffEFBD55);
 Color trackTextColor=Color(0xffACACAC);
 Color borderColor=Color(0xffE7E7E7);

 Border gridBottomborder= Border(bottom: BorderSide(color: addNewTextFieldBorder.withOpacity(0.5)));
 TextStyle bgColorTS14=TextStyle(fontFamily: 'RR',color: bgColor,fontSize: 14);
 TextStyle gridHeaderTS=TextStyle(fontFamily: 'RR',color: bgColor,fontSize: 16);
 TextStyle gridTextColor14=TextStyle(fontFamily: 'RR',color: grey,fontSize: 14);
 TextStyle gridTextColor15=TextStyle(fontFamily: 'RR',color:Colors.black,fontSize: 14);
 TextStyle TSWhite166=TextStyle(fontFamily: 'RR',fontSize: 16,color: Colors.white,letterSpacing: 0.1);
 TextStyle hintText=TextStyle(fontFamily: 'RR',fontSize: 16,color: grey.withOpacity(0.5));

 late String prefEmail;
 late String prefPassword;



 const kPrimaryColor = Color(0xFFFF7643);
 const kTextColor = Color(0xFF757575);

 final headingStyle = TextStyle(
  fontSize:28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
 );

 final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: 15),
  border: UnderlineInputBorder(),
  focusedBorder: UnderlineInputBorder(),
  enabledBorder: UnderlineInputBorder(),
 );

 OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
   // borderRadius: BorderRadius.circular(15),
   // borderSide: BorderSide(color: kTextColor),
  );
 }
 //rawScrollBar Properties
  const Color srollBarColor=Colors.grey;
  const double scrollBarRadius=5.0;
  const double scrollBarThickness=4.0;


 double attWidth=10;
 double textFieldBR=10;

 Duration animeDuration=Duration(milliseconds: 300);
 Cubic animeCurve=Curves.easeIn;


 ts10(Color color,{String fontfamily='RR'}){
  return TextStyle(fontSize: 10,fontFamily: fontfamily,color: color,letterSpacing: 0.1);
 }
 ts12(Color color,{String fontfamily='RR'}){
  return TextStyle(fontSize: 12,fontFamily: fontfamily,color: color,letterSpacing: 0.1);
 }
 ts14(Color color,{String fontfamily='RR'}){
  return TextStyle(fontSize: 14,fontFamily: fontfamily,color: color,letterSpacing: 0.1);
 }
 ts15(Color color,{String fontfamily='RR'}){
  return TextStyle(fontSize: 15,fontFamily: fontfamily,color: color,letterSpacing: 0.1);
 }
 ts16(Color color,{String fontfamily='RR'}){
  return TextStyle(fontSize: 16,fontFamily: fontfamily,color: color,letterSpacing: 0.1);
 }
 ts18(Color color,{String fontfamily='RR',double fontsize=18}){
  return TextStyle(fontSize: fontsize,fontFamily: fontfamily,color: color,letterSpacing: 0.1);
 }
