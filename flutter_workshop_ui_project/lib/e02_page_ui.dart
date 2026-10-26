import 'package:flutter/material.dart';

import 'core/app_style.dart';
import 'core/navigation.dart';
import 'e03_page_ui.dart';
import 'e04_page_ui.dart';
import 'widgets/app_text_field.dart';
import 'widgets/auth_header.dart';
import 'widgets/auth_prompt.dart';
import 'widgets/full_height_scroll.dart';
import 'widgets/or_divider.dart';
import 'widgets/primary_button.dart';
import 'widgets/social_login_row.dart';

/// E02 - Login.
class E02PageUI extends StatelessWidget {
  const E02PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FullHeightScroll(
        children: [
          const AuthHeader(),
          const SizedBox(height: 8),
          const Text('Welcome back', textAlign: TextAlign.center, style: AppText.heading),
          const Text(
            'Login to your account',
            textAlign: TextAlign.center,
            style: AppText.subheading,
          ),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: AppTextField(
              hint: 'Enter email or phone',
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: AppTextField(
              hint: 'Password',
              obscureText: true,
              showVisibilityToggle: true,
              textInputAction: TextInputAction.done,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 28),
              child: TextButton(
                onPressed: () => pushPage(context, const E04PageUI()),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.orange,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            // No backend / home screen in the assignment, so Log In has no action yet.
            child: PrimaryButton(label: 'Log In', onPressed: () {}),
          ),
          const SizedBox(height: 18),
          const OrDivider(),
          const SizedBox(height: 18),
          const SocialLoginRow(),
          const Spacer(),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: AuthPrompt(
                question: "Don't have an Account?",
                actionLabel: 'Create Account',
                onAction: () => pushPage(context, const E03PageUI()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
