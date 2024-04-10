import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kmg_password_manager/core/const/app_colors.dart';
import 'package:kmg_password_manager/core/widgets/primary_button.dart';

import '../../../../home/presentation/page/homepage_view.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.white,
        ),
        width: 200.w,
        // height: 350.h,
        child: Column(
          children: [
            Text(
              'Регистрация',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: AppColors.black),
            ).paddingOnly(top:20.h),

            //NAME
            TextFormField(
              controller: _nameController,
              maxLines: 1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите ФИО';
                }
                final name = value.trim().split(' ');
                if (name.length < 2) {
                  return 'Введите ФИО';
                }
              },
              decoration: InputDecoration(
                hintText: 'Введите ФИО...',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.gray),
              ),
            ).paddingSymmetric(vertical: 30.h, horizontal: 10.w),

            //PASSWORD
            TextFormField(
              obscureText: _obscureText,
              controller: _passwordController,
              obscuringCharacter: '*',
              maxLines: 1,
              validator: (value) {
                final numericRegExp = RegExp(r'[0-9]');
                final specialCharRegExp = RegExp(
                    r'[\^$*.\[\]{}()?\-"!@#%&/\,><:;_~`+=' // <-- Notice the escaped symbols
                    "'" // <-- ' is added to the expression
                    ']');
                if (value == null || value.isEmpty) {
                  return 'Введите пароль';
                } else if (!value.hasCapitalletter() ||
                    !value.contains(specialCharRegExp) ||
                    !value.contains(numericRegExp) ||
                    value.length < 8) {
                  return 'Пароль должен содержать: 1 заглавную букву, цифру, специальный символ. Минимальное количество символов - 8';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'Введите пароль...',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.gray),
                suffixIcon: IconButton(
                  icon: _obscureText
                      ? SvgPicture.asset(
                          'assets/icons/visibility_off.svg',
                          color: Colors.black,
                        )
                      : SvgPicture.asset(
                          'assets/icons/visibility.svg',
                          color: Colors.black,
                        ),
                  onPressed: () {
                    _obscureText = !_obscureText;
                    setState(() {});
                  },
                ),
              ),
            ).paddingSymmetric(horizontal: 10.w),
            PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePageView(),
                  ),
                );
              },
              child: const Text(
                'Зарегистрироваться',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            ).paddingOnly(top: 20.h, bottom: 30.h),
          ],
        ),
      ).paddingSymmetric(vertical: 150.h, horizontal: 130.w),
    );
  }
}
