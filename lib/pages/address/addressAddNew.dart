

import 'package:ecommerce_user/notifiers/themeNotifier.dart';
import 'package:ecommerce_user/styles/constants.dart';
import 'package:ecommerce_user/styles/size.dart';
import 'package:ecommerce_user/widgets/bottomPainter.dart';
import 'package:ecommerce_user/widgets/companySettingsTextField.dart';
import 'package:ecommerce_user/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressAddNew extends StatefulWidget {
  @override
  _AddressAddNewState createState() => _AddressAddNewState();
}

class _AddressAddNewState extends State<AddressAddNew>with TickerProviderStateMixin {
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
                    CustomAppBar(title: "Add New Address"),
                    CompanySettingsTextField(
                      hintText: "Enter full name",
                      img: "",
                      borderRadius: textFieldBR,
                    ),
                    CompanySettingsTextField(
                      margin: EdgeInsets.only(top: 10),
                      hintText: "Mobile Number",
                      img: "",
                      borderRadius: textFieldBR,
                    ),
                    CompanySettingsTextField(
                      margin: EdgeInsets.only(top: 10),
                      hintText: "Pincode",
                      img: "",
                      borderRadius: textFieldBR,
                    ),
                    CompanySettingsTextField(
                      margin: EdgeInsets.only(top: 10),
                      hintText: "Landmark",
                      img: "",
                      borderRadius: textFieldBR,
                    ),
                    CompanySettingsTextField(
                      margin: EdgeInsets.only(top: 10),
                      hintText: "City",
                      img: "",
                      borderRadius: textFieldBR,
                    ),
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



