import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kmg_password_manager/core/navigation/router.dart';

import '../core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            builder:EasyLoading.init(),
            theme:APP_THEME,
            routerConfig:goRouter,
            debugShowCheckedModeBanner: false,
          );
        }
    );
  }
}
