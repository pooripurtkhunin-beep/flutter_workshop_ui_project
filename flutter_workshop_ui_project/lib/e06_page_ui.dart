import 'package:flutter/material.dart';

import 'core/app_style.dart';
import 'core/navigation.dart';
import 'widgets/app_text_field.dart';
import 'widgets/auth_header.dart';
import 'widgets/full_height_scroll.dart';
import 'widgets/primary_button.dart';

/// E06 - Create new password.
class E06PageUI extends StatelessWidget {
  const E06PageUI({super.key});

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
                const Text('Create New Password', style: AppText.sectionTitle),
                Text(
                  'Enter new password',
                  style: AppText.subheading.copyWith(fontSize: 22),
                ),
                const SizedBox(height: 20),
                const AppTextField(hint: 'Enter New password', obscureText: true),
                const SizedBox(height: 12),
                const AppTextField(
                  hint: 'Confirm password',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 20),
                // Password is not stored anywhere (no backend): Submit returns to Login.
                PrimaryButton(label: 'Submit', onPressed: () => goToLogin(context)),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
