import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_market_ui/constants/constants.dart';
import 'package:pet_market_ui/home_page/body/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pet Market',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 30.sp,
          ),
        ),
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(10),
                // topRight: Radius.circular(10),
                )),
      ),
      body: HomePageBody(),
    );

  }
}
