import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class NicknameField extends StatelessWidget {
  const NicknameField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: '닉네임',
        hintText: '닉네임을 입력하세요',
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
        final nickname = value?.trim() ?? '';

        if (nickname.isEmpty) {
          return '닉네임을 입력해주세요.';
        }

        if (nickname.length < 2) {
          return '닉네임은 두 글자 이상 입력해주세요.';
        }

        return null;
      },
      onChanged: onChanged,
    );
  }
}
