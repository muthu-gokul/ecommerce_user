import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:flutter/material.dart';

class CompanySettingsTextField extends StatelessWidget {
  String hintText;
  String img;
  bool enable;
  double borderRadius;
  EdgeInsets margin;
  CompanySettingsTextField({required this.hintText,required this.img,this.enable=true,this.borderRadius=30.0,
  this.margin=const EdgeInsets.only(left: 0)});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
      margin: margin,
      //width: SizeConfig.width5,
      child: TextField(
        enabled: enable,
        textAlign: TextAlign.left,
        maxLines: 1,
        style:TextStyle(fontSize: 16,fontFamily:'RR',color:Color(0xff7F7F7F),),

        decoration: InputDecoration(
          fillColor: Color(0xffff0000),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Color(0xffD2D2D2))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff6A8528)),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          hintText: hintText,
          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
          prefixIcon:img.isEmpty?Container(height: 0,width: 0,): Container(
            margin:  EdgeInsets.only(left: 0,),
            alignment: Alignment.center,
            child: Image.asset(img,width: 20,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
          ),
          contentPadding: EdgeInsets.symmetric(vertical:enable? 5:10,horizontal: 0),
          prefixIconConstraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: img.isEmpty?20:50,
              minWidth: img.isEmpty?20:40,
              minHeight: 40
          ),
        ),

      ),
    );
  }
}
