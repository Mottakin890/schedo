import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/dimentions/spacings.dart';

class CommonContainer extends StatelessWidget {
  final String iconName;
  final String hintText;
  final Color? hintTextColor;
  final Color? iconColor;
  final Color? containerColor;
  final double? height;
  final double? width;
  const CommonContainer({
    super.key,
    required this.iconName,
    required this.hintText,
    this.hintTextColor,
    this.iconColor,
    this.containerColor,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor,
          border: Border.all(color: AppColors.cPrimary, width: 0.6),
        ),
        child: RPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height ?? 24.r,
                width: width ?? 24.r,
                child: SvgPicture.asset(
                  iconName,
                  fit: BoxFit.contain,
                  colorFilter: iconColor != null
                      ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                      : null,
                ),
              ),
              Spacing.horizontal(16),
              Text(
                hintText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: hintTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}