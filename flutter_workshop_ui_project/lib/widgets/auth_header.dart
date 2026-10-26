import 'package:flutter/material.dart';

import 'circle_back_button.dart';

/// Orange banner with the curved white bottom edge.
///
/// * [height] == null  -> the whole picture (E02, E04, E06)
/// * [height] != null  -> the picture cropped from the top (E03)
class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, this.height, this.showBackButton = true});

  /// Aspect ratio of assets/images/header_orange.png (360 x 313).
  static const double _imageAspectRatio = 360 / 313;

  final double? height;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    final image = Image.asset(
      'assets/images/header_orange.png',
      fit: BoxFit.cover,
      alignment: Alignment.bottomCenter,
    );

    final Widget banner = height == null
        ? AspectRatio(aspectRatio: _imageAspectRatio, child: image)
        : SizedBox(width: double.infinity, height: height, child: image);

    return Stack(
      children: [
        banner,
        if (showBackButton)
          const Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 8, 0, 0),
                child: CircleBackButton(),
              ),
            ),
          ),
      ],
    );
  }
}
