import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:api_prep_dio/presentation/view_model/splash_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Using a GetBuilder to initialize the SplashVM and trigger the check
    return GetBuilder<SplashVm>(
      init: SplashVm(),
      builder: (controller) {
        return const Scaffold(
          backgroundColor: AppColors.cWhite,
          body: Center(
            child: CupertinoActivityIndicator(
              color: AppColors.cPrimary,
            ),
          ),
        );
      },
    );
  }
}
