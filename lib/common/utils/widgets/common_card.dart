import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonCard extends StatelessWidget {
  final String? iconName;
  final Color? iconColor;
  const CommonCard({super.key, this.iconColor, this.iconName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(36),
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(color: AppColors.cGrey300.withOpacity(0.42)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
           iconName ?? 'No svg found',

            fit: BoxFit.contain,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
