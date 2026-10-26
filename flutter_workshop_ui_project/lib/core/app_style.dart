import 'package:flutter/material.dart';

/// Colors sampled from the example screens.
class AppColors {
  const AppColors._();

  static const Color orange = Color(0xFFF69415);
  static const Color orangeLine = Color(0xFFFDBA6A);
  static const Color fieldBorder = Color(0xFFBDBDBD);
  static const Color fieldFocus = Color(0xFFFFC52A);
  static const Color hint = Color(0xFFB0B0B0);
  static const Color otpBox = Color(0xFFE8E8E8);
  static const Color backCircleYellow = Color(0xFFF8EEC0);
  static const Color backChevronYellow = Color(0xFFE9CC55);
  static const Color backCircleOnImage = Color(0x66FFFFFF);
}

class AppFonts {
  const AppFonts._();

  static const String poppins = 'Poppins';
  static const String roboto = 'Roboto';
}

/// Text styles. Sizes were calibrated against the 430 x 932 (iPhone 15 Pro Max)
/// layout of the example images.
class AppText {
  const AppText._();

  static const TextStyle heading = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: Colors.black,
  );

  static const TextStyle subheading = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 21,
    fontWeight: FontWeight.w400,
    height: 1.3,
    color: Colors.black,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const TextStyle link = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.orange,
  );

  static const TextStyle button = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle input = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
  );

  static const TextStyle hint = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.hint,
  );
}
