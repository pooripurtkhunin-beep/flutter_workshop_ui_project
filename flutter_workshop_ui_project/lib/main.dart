import 'package:flutter/material.dart';

import 'core/app_style.dart';
import 'core/device_frame.dart';
import 'e01_page_ui.dart';

void main() {
  runApp(const OrangeApp());
}

class OrangeApp extends StatelessWidget {
  const OrangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orange ส้ม',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: AppFonts.poppins,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orange),
        scaffoldBackgroundColor: Colors.white,
      ),
      // Web / desktop: show the app at iPhone 15 Pro Max size (430 x 932).
      builder: (context, child) => DeviceFrame(child: child ?? const SizedBox.shrink()),
      home: const E01PageUI(),
    );
  }
}
