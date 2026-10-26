import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_style.dart';
import 'core/navigation.dart';
import 'e06_page_ui.dart';
import 'widgets/circle_back_button.dart';
import 'widgets/full_height_scroll.dart';
import 'widgets/primary_button.dart';

/// E05 - OTP verification.
class E05PageUI extends StatelessWidget {
  const E05PageUI({super.key});

  static const int _otpLength = 4;

  Widget _otpBox(BuildContext context, int index) {
    return SizedBox(
      width: 63,
      height: 63,
      child: TextField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        cursorColor: AppColors.orange,
        style: AppText.sectionTitle,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.otpBox,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.orange, width: 1.5),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < _otpLength - 1) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: FullHeightScroll(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 12, 24, 0),
              child: Row(
                children: [
                  CircleBackButton(
                    backgroundColor: AppColors.backCircleYellow,
                    iconColor: AppColors.backChevronYellow,
                  ),
                  Expanded(
                    child: Text(
                      'OTP Verification',
                      textAlign: TextAlign.center,
                      style: AppText.sectionTitle,
                    ),
                  ),
                  SizedBox(width: 36),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Image.asset(
                'assets/images/otp_verification.png',
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Enter OTP', style: AppText.sectionTitle),
                  Text(
                    'An 4 digit code has been sent to your\nemail',
                    style: AppText.subheading.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      for (int i = 0; i < _otpLength; i++) ...[
                        if (i > 0) const SizedBox(width: 8),
                        _otpBox(context, i),
                      ],
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: 'You should recieve the OTP in '),
                          TextSpan(
                            text: '30 Second',
                            style: TextStyle(
                              color: AppColors.orange,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  PrimaryButton(
                    label: 'Verify',
                    onPressed: () => pushPage(context, const E06PageUI()),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
