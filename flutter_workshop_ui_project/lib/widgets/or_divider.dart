import 'package:flutter/material.dart';

import '../core/app_style.dart';

/// "—— OR ——" separator.
class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(child: Divider(height: 1, thickness: 1, color: AppColors.orangeLine)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'OR',
              style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(child: Divider(height: 1, thickness: 1, color: AppColors.orangeLine)),
        ],
      ),
    );
  }
}
