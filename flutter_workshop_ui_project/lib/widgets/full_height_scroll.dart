import 'package:flutter/material.dart';

/// A column that fills the screen when it is short enough (so a `Spacer`
/// inside it works) and scrolls when it is too tall (small phones / keyboard).
class FullHeightScroll extends StatelessWidget {
  const FullHeightScroll({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
            ),
          ),
        );
      },
    );
  }
}
