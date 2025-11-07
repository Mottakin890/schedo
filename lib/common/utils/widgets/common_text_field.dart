import 'package:api_prep_dio/common/resources/assets/app_colors.dart';
import 'package:api_prep_dio/common/resources/dimentions/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController textEditingController;
  final BuildContext context;
  final Function? onChanged;
  final FormFieldValidator<String>? validator;
  final bool enabled;
  final TextInputType textInputType;
  final FocusNode? focusNode;
  final Widget? prefixWidget, suffixWidget;
  final bool isPassword;
  final bool alwaysShowSuffixWidget;
  final int? maxLines;
  final int? maxLength;
  final bool isSelected;
  final TextCapitalization? textCapitalization;
  final Function? onSubmit;
  final List<TextInputFormatter>? textFormatters;
  final Color? fillColor;
  final bool showBorder;

  const CommonTextField({
    required this.textEditingController,
    required this.context,
    required this.labelText,
    this.onChanged,
    this.validator,
    this.focusNode,
    required this.enabled,
    required this.textInputType,
    super.key,
    this.prefixWidget,
    this.suffixWidget,
    this.alwaysShowSuffixWidget = false,
    this.isPassword = false,
    this.maxLines,
    this.isSelected = false,
    this.textCapitalization,
    this.onSubmit,
    this.textFormatters,
    this.fillColor,
    this.showBorder = true,
    this.maxLength,
  });

  @override
  CommonTextFieldState createState() => CommonTextFieldState();
}

class CommonTextFieldState extends State<CommonTextField> {
  bool obscureText = false;
  late FocusNode _focusNode;
  late bool isSelected;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    isSelected = widget.isSelected;

    _focusNode.addListener(() {
      setState(() {
        isSelected = _focusNode.hasFocus;
      });
    });

    if (widget.isPassword) {
      obscureText = true;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: (widget.maxLines == null) ? 60.r : 150.h,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.fillColor ?? AppColors.cF7F8F8,
        borderRadius: BorderRadius.circular(14),
        border: (widget.showBorder)
            ? Border.all(
                width: 0.5,
                color: isSelected
                    ? widget.fillColor == null
                          ? AppColors.cPrimary
                          : AppColors.cGrey
                    : AppColors.cWhite,
              )
            : null,
        boxShadow: [
          (widget.fillColor == null)
              ? BoxShadow(
                  color: (isSelected)
                      ? AppColors.cBlack.withValues(alpha: 0.1)
                      : Colors.transparent,
                  blurRadius: 5,
                  spreadRadius: 1.5,
                  offset: const Offset(0, 0),
                )
              : const BoxShadow(),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isSelected)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 4,
                    ).r,
                    child: Text(
                      widget.labelText,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.cGrey,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                if (isSelected) 2.verticalSpace,
                Expanded(
                  child: Padding(
                    padding: (isSelected)
                        ? const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 8,
                          ).r
                        : EdgeInsets.only(
                            left: 6,
                            right: 6,
                            bottom: (widget.maxLength == null) ? 0 : 8,
                            top: 2,
                          ).r,
                    child: TextFormField(
                      cursorColor: AppColors.cBlack,
                      focusNode: _focusNode,
                      textInputAction: TextInputAction.done,
                      keyboardType: widget.textInputType,
                      enabled: widget.enabled,
                      obscureText: obscureText,
                      maxLines: widget.maxLines ?? 1,
                      maxLength: widget.maxLength,
                      textCapitalization:
                          widget.textCapitalization ?? TextCapitalization.none,
                      inputFormatters: widget.textFormatters ?? [],
                  
        
                      onChanged: (text) {
                        if (widget.onChanged != null) {
                          widget.onChanged!(text);
                        }
                      },
                      onTapOutside: (_) {
                        _focusNode.unfocus();
                      },
                      validator: widget.validator,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: widget.textEditingController,
                      decoration: InputDecoration(
                        counterStyle: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              color: AppColors.cBlack,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                        prefixIcon: (!isSelected) ? widget.prefixWidget : null,
                        alignLabelWithHint: true,
                        isCollapsed: isSelected,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: AppColors.cWhite),
                        ),
                        // contentPadding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.0.w),
                        hintText: (isSelected) ? "" : widget.labelText,
                        hintStyle: Theme.of(context).textTheme.bodyMedium!
                            .copyWith(color: AppColors.cGrey, fontSize: 15.sp),
                        floatingLabelStyle: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.cGrey, fontSize: 15.sp),
                        isDense: false,
                        errorStyle: Theme.of(context).textTheme.bodySmall
                            ?.copyWith(color: Colors.red, fontSize: 11.sp),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isSelected || widget.alwaysShowSuffixWidget)
            GestureDetector(
              child: widget.suffixWidget ?? const SizedBox.shrink(),
            ),
          if ((isSelected || widget.alwaysShowSuffixWidget) &&
              widget.suffixWidget != null)
            Spacing.horizontal(16),
          if (widget.suffixWidget == null && widget.isPassword)
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    obscureText = !obscureText;
                    setState(() {});
                  },
                  child: obscureText
                      ? Icon(
                          Icons.visibility_off_outlined,
                          color: AppColors.cGrey300,
                        )
                      : Icon(
                          Icons.visibility_outlined,
                          color: AppColors.cGrey300,
                        ),
                ),
                Spacing.vertical(16),
              ],
            ),
          if (widget.suffixWidget == null && widget.isPassword)
            Spacing.horizontal(16),
        ],
      ),
    );
  }

  @override
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
