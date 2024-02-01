import 'package:codia_demo_flutter/comfirmtranction.dart';
import 'package:codia_demo_flutter/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main () {
  runApp(const Hova());
}
class Hova extends StatelessWidget {
  const Hova({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // The design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:
              ComfirmTransaction(), // Assuming HomePage is a widget you want to navigate to
        );
      },
    );
  }
}
