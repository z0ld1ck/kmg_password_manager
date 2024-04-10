import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/app_colors.dart';


final ThemeData APP_THEME = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.blueSuper,
  brightness: Brightness.light,
  primaryColor: const Color(0xFF141432),

  primaryColorLight: const Color(0xffF1F8EC),
  iconTheme: const IconThemeData(color: Colors.black),
  textTheme: GoogleFonts.interTextTheme(),
  buttonTheme: ButtonThemeData(
    buttonColor: const Color(0xFF2EA1D9),
    padding: EdgeInsets.symmetric(vertical: 12.h),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    modalElevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(color: Color(0xFFE0E2D8)),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(color: Color(0xFF878882)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: const Color(0xFF2EA1D9), width: 2.w),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: AppColors.error, width: 2.w),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: BorderSide(color: AppColors.error, width: 2.w),
    ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    helperStyle: GoogleFonts.inter(
      color: const Color(0xFF1B1B1B),
      fontSize: 12,

      fontWeight: FontWeight.w400 ,
      height: 1.25,
      letterSpacing: 0.24,
    ),
    errorStyle: GoogleFonts.inter(
      color: AppColors.error,
      fontSize: 12,

      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.24,
    ),
    floatingLabelStyle: GoogleFonts.inter(
      color: const Color(0xFF1B1B1B),
      fontSize: 14.sp,

      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.24,
    ),
    labelStyle: GoogleFonts.inter(
      color: const Color(0xFF1B1B1B),
      fontSize: 14.sp,

      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.24,
    ),
    hintStyle: GoogleFonts.inter(

      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 14.sp,
      color: const Color(0xFF878882),
      letterSpacing: 0.24,
    ),
  ),
  timePickerTheme: TimePickerThemeData(
    dialHandColor: const Color(0xFF2EA1D9),
    hourMinuteTextColor: const Color(0xFF2EA1D9),
    backgroundColor: const Color(0xffF1F8EC),
    dayPeriodTextColor: const Color(0xFF2EA1D9),
    dialBackgroundColor: const Color(0xFF2EA1D9).withOpacity(0.1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: const Color(0xFF2EA1D9),
    selectionColor: const Color(0xFF2EA1D9).withOpacity(0.35),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    circularTrackColor: Colors.transparent,
    color: Color(0xFF2EA1D9),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF2EA1D9),
  ),
  appBarTheme: AppBarTheme(
    color: AppColors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      // fontSize: ScreenUtil().setSp(38), // 16 by figma
      fontSize: 16,
      color: AppColors.black,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: AppColors.black,
    ),
    iconTheme: const IconThemeData(color: AppColors.black),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all(const Color(0xFF2EA1D9)),
  ),
  switchTheme: SwitchThemeData(
    overlayColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) return const Color(0xFF2EA1D9);
      return AppColors.gray;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) return const Color(0xFF2EA1D9);
      return AppColors.gray;
    }),
    trackColor: MaterialStateProperty.all(const Color(0xFFE0E2D8)),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      return states.any((element) => element == MaterialState.selected) ? const Color(0xFF2EA1D9) : Colors.transparent;
    }),
    side: BorderSide(
      color: const Color(0xFF2EA1D9),
      width: 2.w,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    dividerColor: Colors.transparent,
  ),
  scrollbarTheme: ScrollbarThemeData(thumbVisibility: MaterialStateProperty.all(true), thickness: MaterialStateProperty.all(10), thumbColor: MaterialStateProperty.all(const Color(0xFF2EA1D9)), radius: const Radius.circular(10), minThumbLength: 100),
  colorScheme: const ColorScheme.light().copyWith(primary: const Color(0xFF2EA1D9),).copyWith(
    background: const Color(0xffF7F7F6),
    secondary: const Color(0xFF2EA1D9),
  ),
);