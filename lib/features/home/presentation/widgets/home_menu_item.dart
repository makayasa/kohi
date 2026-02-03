import 'package:flutter/material.dart';

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    super.key,
    required this.asset,
    required this.label,
  });
  final String asset;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return SizedBox(
      // padding: .all(10),
      height: 100,
      width: 75,
      child: Column(
        mainAxisAlignment: .center,
        // crossAxisAlignment: .center,
        children: [
          Container(
            padding: .all(7),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
              shape: .circle,
            ),
            height: 40,
            child: Image.asset(
              // 'assets/coffee.png',
              asset,
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            // 'Free Coffee',
            label,
            textAlign: .center,
            style: textTheme.labelMedium!.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}