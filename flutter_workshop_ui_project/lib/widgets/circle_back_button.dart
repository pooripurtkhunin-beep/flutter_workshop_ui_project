import 'package:flutter/material.dart';

import '../core/app_style.dart';

/// Round "<" button used on E02, E04, E05 and E06.
class CircleBackButton extends StatelessWidget {
  const CircleBackButton({
    super.key,
    this.backgroundColor = AppColors.backCircleOnImage,
    this.iconColor = Colors.white,
    this.onPressed,
  });

  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36,
      height: 36,
      child: Material(
        color: backgroundColor,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed ?? () => Navigator.of(context).maybePop(),
          child: Icon(Icons.chevron_left, size: 28, color: iconColor),
        ),
      ),
    );
  }
}
