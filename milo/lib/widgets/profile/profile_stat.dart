import 'package:flutter/material.dart';
import 'package:movielog/widgets/profile/stat_item.dart';

class ProfileStat extends StatelessWidget {
  const ProfileStat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: _stats
            .map(
              (stat) => Expanded(
                child: StatItem(label: stat.label, value: stat.value),
              ),
            )
            .expand((widget) => [widget, const SizedBox(width: 8)])
            .toList(),
      ),
    );
  }
}

class _StatData {
  const _StatData(this.label, this.value);
  final String label;
  final String value;
}

const _stats = [
  _StatData('본 영화', '24'),
  _StatData('평점', '4.2'),
  _StatData('즐겨찾기', '58'),
];
