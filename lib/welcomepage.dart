import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/const/app_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize:Size(double.infinity,50.h),
        child:AppBar(
          title:const Text('KMG Password manager'),
          centerTitle: true,
        ),
      ),
      backgroundColor:AppColors.primary(context),
      body: Column(
        children: [
          Container(
            width:150.w,
            height:150.h,
            color:Colors.white,
          ).paddingOnly(top:20.h,left:20.w),
        ],
      ),
    );
  }
}
