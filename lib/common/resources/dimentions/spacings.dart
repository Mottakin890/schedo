import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A utility class to provide consistent vertical and horizontal spacing across the app.
class Spacing {
  /// Adds vertical spacing of a given [space] in pixels.
  /// [space] should be a positive number representing the amount of vertical spacing.
  static Widget vertical(double space) => space.verticalSpace;

  /// Adds horizontal spacing of a given [space] in pixels.
  /// [space] should be a positive number representing the amount of horizontal spacing.
  static Widget horizontal(double space) => space.horizontalSpace;
}
