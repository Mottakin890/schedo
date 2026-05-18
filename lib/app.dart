import 'package:api_prep_dio/core/router/app_router.dart';
import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.cFFFFFF,
        primaryColor: AppColors.c7FA6FF,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.c7FA6FF,
          primary: AppColors.c7FA6FF,
          background: AppColors.cFFFFFF,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 42.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.c000000,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.c000000,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            color: AppColors.c000000,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.c000000.withOpacity(0.72),
          ),
        ),
      ),
    );
  }
}
