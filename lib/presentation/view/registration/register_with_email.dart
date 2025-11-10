import 'package:api_prep_dio/common/resources/assets/app_assets.dart';
import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:api_prep_dio/common/resources/dimentions/spacings.dart';
import 'package:api_prep_dio/common/utils/widgets/common_app_bar.dart';
import 'package:api_prep_dio/common/utils/widgets/common_text_field.dart';
import 'package:api_prep_dio/presentation/view_model/page_router_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class RegisterWithEmail extends StatefulWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  RegisterWithEmail({super.key});

  @override
  State<RegisterWithEmail> createState() => _RegisterWithEmailState();
}

class _RegisterWithEmailState extends State<RegisterWithEmail> {
  final PageRouterVm _pageRouterVm = Get.find<PageRouterVm>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      appBar: CommonAppBar(backgroundColor: AppColors.cWhite),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Lottie.asset(
                AppAssets.registerLottie,
                height: 160,
                fit: BoxFit.contain,
                repeat: true,
              ),
              Text(
                'Welcome to Schedo',
                style: TextStyle(
                  color: AppColors.cBlack,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Let's start our journey together.",
                style: TextStyle(
                  color: AppColors.cBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacing.vertical(40),
              //Input Fields
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
              Spacing.vertical(6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Hero(
                  tag: "password",
                  child: CommonTextField(
                    textEditingController: widget._passwordController,
                    context: context,
                    labelText: 'Enter your passcode',
                    enabled: true,
                    textInputType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              Spacing.vertical(6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Hero(
                  tag: "confirm password",
                  child: CommonTextField(
                    textEditingController: widget._confirmPasswordController,
                    context: context,
                    labelText: 'Confirm your passcode',
                    enabled: true,
                    textInputType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              Spacing.vertical(15),

              //Log in button
              GestureDetector(
                onTap: () {},
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
                        'Register',
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
              Spacing.vertical(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: AppColors.cGrey.withOpacity(0.5)),
                  ),
                  Spacing.horizontal(6),
                  GestureDetector(
                    onTap: _pageRouterVm.toLogin,
                    child: Text(
                      "Login!",
                      style: TextStyle(
                        color: AppColors.cPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Spacing.vertical(20),
            ],
          ),
        ),
      ),
    );
  }
}
