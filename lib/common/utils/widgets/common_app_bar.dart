import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final bool showBackButton;
  const CommonAppBar({
    super.key,
    this.backgroundColor,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: showBackButton
          ? GestureDetector(
              onTap: () => Get.back(),
              child: Icon(CupertinoIcons.chevron_back, size: 40),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
