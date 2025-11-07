import 'package:api_prep_dio/common/resources/assets/app_assets.dart';
import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:api_prep_dio/common/resources/dimentions/spacings.dart';
import 'package:api_prep_dio/common/utils/widgets/common_app_bar.dart';
import 'package:api_prep_dio/common/utils/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatefulWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                AppAssets.loginLottie,
                height: 230,
                repeat: true,
                fit: BoxFit.contain,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: AppColors.cBlack,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Let's dig into your account!",
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
              Spacing.vertical(12),
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
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot your password?',
                      style: TextStyle(color: AppColors.cGrey.withOpacity(0.5)),
                    ),
                    Spacing.horizontal(5),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Click here',
                        style: TextStyle(
                          color: AppColors.cPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
                        'Login',
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
                    "Don't have an account?",
                    style: TextStyle(color: AppColors.cGrey.withOpacity(0.5)),
                  ),
                  Spacing.horizontal(6),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      "Let's create one!",
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
