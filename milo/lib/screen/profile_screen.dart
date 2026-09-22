import 'package:flutter/material.dart';
import 'package:movielog/theme/app_colors.dart';
import 'package:movielog/theme/app_text_styles.dart';
import 'package:movielog/widgets/common_appbar.dart';
import 'package:movielog/widgets/profile/favorite_genres.dart';
import 'package:movielog/widgets/profile/profile_header.dart';
import 'package:movielog/widgets/profile/profile_stat.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: CommonAppBar(
        title: '내 프로필',
        titleStyle: AppTextStyles.titleLarge.copyWith(
          color: AppColors.primary,
          fontSize: 24,
        ),
      ),
      body: const SafeArea(child: ProfileBody()),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfileHeader(),
          const SizedBox(height: 32),
          const ProfileStat(),
          const SizedBox(height: 32),
          const FavoriteGenres(),
        ],
      ),
    );
  }
}
