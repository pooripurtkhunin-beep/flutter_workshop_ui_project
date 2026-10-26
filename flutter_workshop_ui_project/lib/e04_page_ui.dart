import 'package:flutter/material.dart';

import 'core/app_style.dart';
import 'core/navigation.dart';
import 'e03_page_ui.dart';
import 'e05_page_ui.dart';
import 'widgets/app_text_field.dart';
import 'widgets/auth_header.dart';
import 'widgets/auth_prompt.dart';
import 'widgets/full_height_scroll.dart';
import 'widgets/primary_button.dart';

/// E04 - Forgot password.
class E04PageUI extends StatelessWidget {
  const E04PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FullHeightScroll(
        children: [
          const AuthHeader(),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Forgot your password?', style: AppText.sectionTitle),
                Text(
                  'Enter email address',
                  style: AppText.subheading.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 12),
                const AppTextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  label: 'Send code',
                  onPressed: () => pushPage(context, const E05PageUI()),
                ),
              ],
            ),
          ),
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
