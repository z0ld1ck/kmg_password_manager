import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmg_password_manager/core/const/app_colors.dart';
import '../widgets/login_form_widget.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: AppBar(
          title: const Text('KMG Password manager'),
        ),
      ),
      backgroundColor:AppColors.primary(context),
      body:const Column(
        children: [
          LoginFormWidget(),
        ],
      ),
    );
  }
}
