import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kmg_password_manager/core/const/app_colors.dart';
import '../../../../core/navigation/route_names.dart';


class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary(context),
        automaticallyImplyLeading: true,
        actions: [
          const Text(
            'KMG Password Manager',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(
            width: 272.w,
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: AppColors.white,
          onPressed: () {
            GoRouter.of(context).pushNamed(RouteNames.home.path);
          },
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
