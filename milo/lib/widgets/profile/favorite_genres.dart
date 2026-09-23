import 'package:flutter/material.dart';
import 'package:movielog/theme/app_colors.dart';
import 'package:movielog/theme/app_text_styles.dart';
import 'package:movielog/widgets/profile/genre_tag.dart';

class FavoriteGenres extends StatelessWidget {
  const FavoriteGenres({super.key});

  @override
  Widget build(BuildContext context) {
    const genres = ['드라마', 'SF', '애니메이션'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '선호하는 장르',
          style: AppTextStyles.titleMedium.copyWith(color: AppColors.onSurface),
        ),
        const SizedBox(height: 16),
        Row(
          spacing: 8,
          children: genres.map((genre) => GenreTag(label: genre)).toList(),
        ),
      ],
    );
  }
}
