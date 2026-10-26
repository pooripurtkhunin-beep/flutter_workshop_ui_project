import 'package:flutter/material.dart';

import '../core/app_style.dart';

/// "Don't have an Account? Create Account" line at the bottom of a screen.
class AuthPrompt extends StatelessWidget {
  const AuthPrompt({
    super.key,
    required this.question,
    required this.actionLabel,
    required this.onAction,
  });

  final String question;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question, style: AppText.body),
        TextButton(
          onPressed: onAction,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.orange,
            padding: const EdgeInsets.only(left: 4, top: 4, bottom: 4),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(actionLabel, style: AppText.link),
        ),
      ],
    );
  }
}
