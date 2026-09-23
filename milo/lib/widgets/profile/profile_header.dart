import 'package:flutter/material.dart';
import 'package:movielog/theme/app_colors.dart';
import 'package:movielog/theme/app_text_styles.dart';
import 'package:movielog/widgets/profile/profile_avatar.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileAvatar(
          imagePath: 'assets/images/profile/profile_movielog.jpg',
        ),
        const SizedBox(height: 8),
        Text(
          '무비러버',
          textAlign: TextAlign.center,
          style: AppTextStyles.titleLarge.copyWith(color: AppColors.onSurface),
        ),
        const SizedBox(height: 8),
        Text(
          '매주 주말엔 영화관으로 출근하는 프로 관람객.\n좋은 영화를 보고 기록하는 것을 좋아합니다.',
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          padding: const EdgeInsets.only(top: 8),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              foregroundColor: AppColors.onPrimaryContainer,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              side: BorderSide(color: AppColors.onPrimaryContainer),
            ),
            child: const Text('프로필 수정'),
          ),
        ),
      ],
    );
  }
}
