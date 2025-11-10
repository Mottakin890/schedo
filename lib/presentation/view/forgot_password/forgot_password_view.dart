import 'package:api_prep_dio/common/resources/assets/app_assets.dart';
import 'package:api_prep_dio/common/resources/dimentions/spacings.dart';
import 'package:api_prep_dio/common/utils/widgets/common_app_bar.dart';
import 'package:api_prep_dio/presentation/view_model/page_router_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../common/resources/assets/app_colors.dart';
import '../../../common/utils/widgets/common_text_field.dart';

class ForgotPasswordView extends StatefulWidget {
  final TextEditingController _emailController = TextEditingController();
  ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final PageRouterVm _pageRouterVm = PageRouterVm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      appBar: CommonAppBar(
        showBackButton: true,
        backgroundColor: AppColors.cWhite,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                AppAssets.forgotPasswordLottie,
                repeat: true,
                fit: BoxFit.contain,
                height: 200,
              ),
              Spacing.vertical(10),
              Text(
                'Forgot Password',
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              Spacing.vertical(4),
              Text(
                'Enter your email bellow',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacing.vertical(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Hero(
                  tag: "email",
                  child: CommonTextField(
                    textEditingController: widget._emailController,
                    context: context,
                    labelText: 'Enter your email',
                    enabled: true,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Spacing.vertical(12),
              GestureDetector(
                onTap: _pageRouterVm.toVerifyCode,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.cPrimary,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        'Send code',
                        style: TextStyle(
                          color: AppColors.cWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
