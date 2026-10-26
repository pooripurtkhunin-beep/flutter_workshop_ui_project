import 'package:flutter/material.dart';

import 'core/app_style.dart';
import 'core/navigation.dart';
import 'widgets/app_text_field.dart';
import 'widgets/auth_header.dart';
import 'widgets/auth_prompt.dart';
import 'widgets/full_height_scroll.dart';
import 'widgets/or_divider.dart';
import 'widgets/primary_button.dart';
import 'widgets/social_login_row.dart';

/// E03 - Register.
class E03PageUI extends StatelessWidget {
  const E03PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FullHeightScroll(
        children: [
          const AuthHeader(height: 240, showBackButton: false),
          const SizedBox(height: 8),
          const Text('Register', textAlign: TextAlign.center, style: AppText.heading),
          const Text(
            'Create your new account',
            textAlign: TextAlign.center,
            style: AppText.subheading,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                AppTextField(hint: 'Name'),
                SizedBox(height: 12),
                AppTextField(hint: 'E-mail', keyboardType: TextInputType.emailAddress),
                SizedBox(height: 12),
                AppTextField(hint: 'Phone', keyboardType: TextInputType.phone),
                SizedBox(height: 12),
                AppTextField(
                  hint: 'Password',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text.rich(
              TextSpan(
                style: AppText.body,
                children: [
                  TextSpan(text: 'By signing up you agree to our '),
                  TextSpan(text: 'Terms & Conditions', style: AppText.link),
                  TextSpan(text: '\nand '),
                  TextSpan(text: 'Privacy Policy', style: AppText.link),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            // No backend in the assignment, so Sign Up has no action yet.
            child: PrimaryButton(label: 'Sign Up', onPressed: () {}),
          ),
          const SizedBox(height: 16),
          const OrDivider(),
          const SizedBox(height: 16),
          const SocialLoginRow(),
          const Spacer(),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: AuthPrompt(
                question: 'Already have an Account?',
                actionLabel: 'Log in',
                onAction: () => goToLogin(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
