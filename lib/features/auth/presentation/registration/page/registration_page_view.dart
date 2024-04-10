import 'package:flutter/material.dart';
import '../../../../../core/const/app_colors.dart';

class RegistrationPageView extends StatefulWidget {
  const RegistrationPageView({super.key});

  @override
  State<RegistrationPageView> createState() => _RegistrationPageViewState();
}

class _RegistrationPageViewState extends State<RegistrationPageView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
    );
  }
}
