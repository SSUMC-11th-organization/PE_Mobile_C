import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteGenres extends StatelessWidget {
  const FavoriteGenres({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/movie.svg',
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(colors.primary, BlendMode.srcIn),
              semanticsLabel: '영화 장르 아이콘',
            ),
            const SizedBox(width: 8),
            Text('선호하는 장르', style: textTheme.bodyLarge),
          ],
        ),

        const SizedBox(height: 16),

        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            Chip(
              label: const Text('드라마'),
              labelStyle: textTheme.labelLarge?.copyWith(
                color: colors.onPrimaryContainer,
              ),
              backgroundColor: colors.primaryContainer,
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
            Chip(
              label: const Text('SF'),
              labelStyle: textTheme.labelLarge?.copyWith(
                color: colors.onPrimaryContainer,
              ),
              backgroundColor: colors.primaryContainer,
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
            Chip(
              label: const Text('애니메이션'),
              labelStyle: textTheme.labelLarge?.copyWith(
                color: colors.onPrimaryContainer,
              ),
              backgroundColor: colors.primaryContainer,
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
          ],
        ),
      ],
    );
  }
}
