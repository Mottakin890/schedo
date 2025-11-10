import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final bool showBackButton;
  const CommonAppBar({
    super.key,
    this.backgroundColor,
    this.showBackButton = true,
  });

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Make status bar transparent
        statusBarIconBrightness: Brightness.dark, // Dark icons for light background
        statusBarBrightness: Brightness.light, // For iOS
      ),
      backgroundColor: widget.backgroundColor,
      leading: widget.showBackButton
          ? GestureDetector(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back_ios),
            )
          : null,
    );
  }
}
