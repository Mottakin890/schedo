import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spacing {
  const Spacing._();

  static Widget vertical(double space) => space.verticalSpace;
  static Widget horizontal(double space) => space.horizontalSpace;
}