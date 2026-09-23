import 'package:flutter/material.dart';
import 'package:movielog/theme/app_colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.outline, width: 2),
      ),
      child: CircleAvatar(
        radius: 62,
        backgroundColor: AppColors.surfaceContainer,
        backgroundImage: imagePath != null ? AssetImage(imagePath!) : null,
        child: imagePath == null
            ? Icon(Icons.person, size: 62, color: AppColors.onSurfaceVariant)
            : null,
      ),
    );
  }
}
