import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "VidyaHub",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
