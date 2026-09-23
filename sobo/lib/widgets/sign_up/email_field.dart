import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.controller,
    required this.passwordFocusNode,
    required this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode passwordFocusNode;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: '이메일 주소',
        hintText: 'example@movielog.com',
        filled: true,
        fillColor: AppColors.surfaceContainerLow,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
      validator: (value) {
        final email = value?.trim() ?? '';

        if (email.isEmpty) {
          return '이메일을 입력해주세요.';
        }

        final emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

        if (!emailPattern.hasMatch(email)) {
          return '올바른 이메일 형식을 입력해주세요.';
        }

        return null;
      },
      onChanged: onChanged,
      onFieldSubmitted: (_) {
        passwordFocusNode.requestFocus();
      },
    );
  }
}
