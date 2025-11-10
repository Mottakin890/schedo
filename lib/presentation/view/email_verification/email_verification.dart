import 'package:api_prep_dio/common/resources/assets/app_assets.dart';
import 'package:api_prep_dio/common/utils/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

import '../../../common/resources/assets/app_colors.dart';
import '../../../common/resources/dimentions/app_sizes.dart';
import '../../../common/resources/dimentions/spacings.dart';
import '../../../common/utils/widgets/pinput_style.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final int pinCodeFieldLength = 6;
  final TextEditingController _pinCodeController = TextEditingController();
  late final bool isForResetPassword;
  late final bool isForChangingPassword;
  late final Map<String, dynamic>? arguments;

  @override
  void initState() {
    arguments = Get.arguments;
    isForResetPassword = arguments?['isForResetPassword'] ?? false;
    isForChangingPassword = arguments?['isForChangingPassword'] ?? false;
    super.initState();
  }

  @override
  void dispose() {
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      appBar: CommonAppBar(showBackButton: true, backgroundColor: AppColors.cWhite,),
      body: SingleChildScrollView(
        child: Center(
          child: RPadding(
            padding: const EdgeInsets.all(AppSizes.kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacing.vertical(42),
                Lottie.asset(
                  AppAssets.verifyCode,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                Spacing.vertical(8),
                Text(
                  "Verification",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Enter the code to verify your account",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacing.vertical(16),
                Pinput(
                  controller: _pinCodeController,
                  defaultPinTheme: PinPutStyle.getDefaultPinPutStyle(context),
                  focusedPinTheme: PinPutStyle.getFocusedPinStyle(context),
                  submittedPinTheme: PinPutStyle.getSubmittedPinStyle(context),
                  keyboardType: TextInputType.number,
                  length: pinCodeFieldLength,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                ),
                Spacing.vertical(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Code not sent?",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontSize: 13),
                    ),
                    Spacing.horizontal(8),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                          color: AppColors.cPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacing.vertical(16),
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
                          'Verify',
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
      ),
    );
  }
}
