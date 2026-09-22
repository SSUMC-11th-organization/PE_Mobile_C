import 'package:flutter/material.dart';
import 'package:movielog/theme/app_colors.dart';
import 'package:movielog/theme/app_text_styles.dart';

class GenreTag extends StatelessWidget {
  const GenreTag({super.key, required this.label, this.bold = false});

  final String label;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      labelStyle: AppTextStyles.bodySmall.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.onPrimaryContainer,
      ),
      labelPadding: EdgeInsets.zero,
      backgroundColor: AppColors.primaryContainer,
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999)),
    );
  }
}
