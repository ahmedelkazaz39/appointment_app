import 'package:appointment_app/core/routing/app_route.dart';
import 'package:appointment_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocDocApp({super.key, required this.appRouter});

  @override
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First Method',
        theme: ThemeData(
          primaryColor: Colors.blue,
          textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
        ),
        home: const OnboardingScreen(),
      ),
    );
  }
}
