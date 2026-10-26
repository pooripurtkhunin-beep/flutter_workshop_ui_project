import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workshop_ui_project/main.dart';

/// Pumps the app at the iPhone 15 Pro Max logical size (430 x 932 @3x).
Future<void> pumpApp(WidgetTester tester) async {
  tester.view.physicalSize = const Size(1290, 2796);
  tester.view.devicePixelRatio = 3.0;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);

  await tester.pumpWidget(const OrangeApp());
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('E01 is the first page', (tester) async {
    await pumpApp(tester);

    expect(find.text('BERRY JUICE'), findsOneWidget);
    expect(find.text('Explore Now'), findsOneWidget);
  });

  testWidgets('E01 -> E02 -> back', (tester) async {
    await pumpApp(tester);

    await tester.tap(find.text('Explore Now'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome back'), findsOneWidget);
    expect(find.text('Log In'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.chevron_left));
    await tester.pumpAndSettle();
    expect(find.text('BERRY JUICE'), findsOneWidget);
  });

  testWidgets('E02 -> E03 register -> Log in returns to E02', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('Explore Now'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Create Account'));
    await tester.pumpAndSettle();
    expect(find.text('Register'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);

    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome back'), findsOneWidget);
  });

  testWidgets('Forgot password flow E02 -> E04 -> E05 -> E06 -> E02', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('Explore Now'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Forgot Password ?'));
    await tester.pumpAndSettle();
    expect(find.text('Forgot your password?'), findsOneWidget);

    await tester.tap(find.text('Send code'));
    await tester.pumpAndSettle();
    expect(find.text('OTP Verification'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(4));

    await tester.tap(find.text('Verify'));
    await tester.pumpAndSettle();
    expect(find.text('Create New Password'), findsOneWidget);

    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome back'), findsOneWidget);
  });

  testWidgets('Password eye icon toggles visibility', (tester) async {
    await pumpApp(tester);
    await tester.tap(find.text('Explore Now'));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.visibility_off), findsOneWidget);
    await tester.tap(find.byIcon(Icons.visibility_off));
    await tester.pump();
    expect(find.byIcon(Icons.visibility), findsOneWidget);
  });
}
