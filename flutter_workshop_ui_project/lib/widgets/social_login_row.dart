import 'package:flutter/material.dart';

/// Google / Facebook / Apple icons.
///
/// There is no login backend in this workshop, so the buttons only react to
/// taps (ripple) and do not sign anyone in.
class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SocialButton(asset: 'assets/images/google.png', label: 'Google'),
        SizedBox(width: 24),
        _SocialButton(asset: 'assets/images/facebook.png', label: 'Facebook'),
        SizedBox(width: 24),
        _SocialButton(asset: 'assets/images/apple.png', label: 'Apple'),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.asset, required this.label});

  final String asset;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide.none,
        shape: const CircleBorder(),
        padding: EdgeInsets.zero,
        fixedSize: const Size(52, 52),
      ),
      child: Image.asset(asset, width: 36, height: 36, semanticLabel: label),
    );
  }
}
