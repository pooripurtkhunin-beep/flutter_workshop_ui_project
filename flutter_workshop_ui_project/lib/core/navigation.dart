import 'package:flutter/material.dart';

import '../e02_page_ui.dart';

/// Push [page] on top of the current screen.
void pushPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}

/// Go back to the login screen (E02), keeping only the first screen (E01)
/// underneath it.
void goToLogin(BuildContext context) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute<void>(builder: (_) => const E02PageUI()),
    (route) => route.isFirst,
  );
}
