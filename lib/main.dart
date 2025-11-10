import 'package:api_prep_dio/common/resources/routes/app_pages.dart';
import 'package:api_prep_dio/common/resources/routes/app_routes.dart';
import 'package:api_prep_dio/common/utils/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'common/resources/assets/app_colors.dart';

void main(List<String> args) {
  _init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) {
    runApp(
      const ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: TaskManagerApp(),
      ),
    );
  });
}

void _init() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: AppColors.cTransparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: DependencyInjection(),
      getPages: AppRoutes.routes,
      initialRoute: AppPages.splash,
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        overscroll: false,
      ),
    );
  }
}
