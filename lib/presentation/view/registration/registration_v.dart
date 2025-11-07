import 'package:api_prep_dio/common/resources/assets/app_assets.dart';
import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:api_prep_dio/common/resources/dimentions/spacings.dart';
import 'package:api_prep_dio/common/utils/widgets/common_card.dart';
import 'package:api_prep_dio/common/utils/widgets/common_container.dart';
import 'package:api_prep_dio/presentation/view_model/page_router_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final PageRouterVm _pageRouterVm = Get.find<PageRouterVm>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Top Icons here
            CommonCard(
              iconName: AppAssets.taskIcon,
              iconColor: AppColors.cPrimary,
            ),

            Spacing.vertical(50),

            //Intro text here
            Text(
              'Welcome to Schedo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Spacing.vertical(12),
            Text(
              'Create an account to save all schedules \nand access them from anywhere.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.cGrey),
            ),

            Spacing.vertical(60),

            //Registration options here
            //with facebook
            GestureDetector(
              onTap: () {},
              child: CommonContainer(
                containerColor: AppColors.cGrey300.withOpacity(0.3),
                iconName: AppAssets.facebookIcon,
                hintText: "Continue with Facebook",
              ),
            ),
            Spacing.vertical(20),

            //with google
            GestureDetector(
              onTap: () {},
              child: CommonContainer(
                containerColor: AppColors.cGrey300.withOpacity(0.3),
                iconName: AppAssets.googleIcon,
                hintText: "Continue with Google",
              ),
            ),
            Spacing.vertical(20),

            //with email
            GestureDetector(
              onTap: _pageRouterVm.toLogin,
              child: CommonContainer(
                containerColor: AppColors.cPrimary,
                iconName: AppAssets.emailIcon,
                hintText: "Continue with Email",
                hintTextColor: AppColors.cWhite,
                iconColor: AppColors.cWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
