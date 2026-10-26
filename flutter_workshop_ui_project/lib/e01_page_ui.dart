import 'package:flutter/material.dart';

import 'core/app_style.dart';
import 'core/navigation.dart';
import 'e02_page_ui.dart';

/// E01 - Welcome / splash screen (first page of the app).
class E01PageUI extends StatelessWidget {
  const E01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 8, 32, 0),
                child: Image.asset(
                  'assets/images/berry_juice.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Soft shadow under the fruit.
            Transform.translate(
              offset: const Offset(0, -24),
              child: const SizedBox(
                width: 130,
                height: 14,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0x14000000),
                    borderRadius: BorderRadius.all(Radius.elliptical(65, 7)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x22000000),
                        blurRadius: 14,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              'BERRY JUICE',
              style: TextStyle(
                fontFamily: AppFonts.roboto,
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'A Moments of healthy sip\nThe best vitamin for your health',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppFonts.roboto,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.35,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 44),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => pushPage(context, const E02PageUI()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orange,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.only(left: 24, right: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Explore Now', style: AppText.button),
                      Icon(Icons.chevron_right, size: 40, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
