import 'package:flutter/material.dart';

import '../core/app_style.dart';

/// Rounded outlined text field used on every form screen.
class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.hint,
    this.controller,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.showVisibilityToggle = false,
  });

  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;

  /// Shows the eye icon that hides / shows the password (E02).
  final bool showVisibilityToggle;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _hidden = widget.obscureText;

  OutlineInputBorder _border(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: _hidden,
      cursorColor: AppColors.orange,
      style: AppText.input,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: AppText.hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        suffixIcon: widget.showVisibilityToggle
            ? IconButton(
                onPressed: () => setState(() => _hidden = !_hidden),
                icon: Icon(
                  _hidden ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              )
            : null,
        border: _border(AppColors.fieldBorder, 1),
        enabledBorder: _border(AppColors.fieldBorder, 1),
        focusedBorder: _border(AppColors.fieldFocus, 1.5),
      ),
    );
  }
}
