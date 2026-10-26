import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Logical size of an iPhone 15 Pro Max.
const Size kIphone15ProMax = Size(430, 932);

/// On Web / desktop the app is shown inside an iPhone 15 Pro Max sized box
/// (scaled down when the window is smaller). On phones it does nothing.
class DeviceFrame extends StatelessWidget {
  const DeviceFrame({super.key, required this.child});

  final Widget child;

  bool get _useFrame =>
      kIsWeb ||
      const <TargetPlatform>{
        TargetPlatform.windows,
        TargetPlatform.linux,
        TargetPlatform.macOS,
      }.contains(defaultTargetPlatform);

  @override
  Widget build(BuildContext context) {
    if (!_useFrame) return child;

    final mediaQuery = MediaQuery.of(context);
    return ColoredBox(
      color: const Color(0xFFE0E0E0),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: kIphone15ProMax.width,
            height: kIphone15ProMax.height,
            child: ClipRect(
              child: MediaQuery(
                data: mediaQuery.copyWith(size: kIphone15ProMax),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
