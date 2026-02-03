import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Positioned.fill(
      bottom: 5,
      child: Align(
        alignment: .bottomCenter,
        child: Container(
          margin: .symmetric(horizontal: 10),
          padding: .symmetric(horizontal: 15),
          height: 70,
          decoration: BoxDecoration(
            // color: theme.colorScheme.primaryContainer,
            color: theme.colorScheme.tertiary,
            borderRadius: .circular(10),
          ),
          child: Row(
            children: [
              Text(
                'Hi, Makayasa',
                style: textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              Spacer(flex: 2),
              Icon(
                Icons.airplane_ticket,
                // color: theme.colorScheme.surface,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(width: 5),
              Text(
                '1',
                style: textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              const SizedBox(width: 15),
              Icon(
                Icons.blur_circular_outlined,
                // color: theme.colorScheme.surface,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(width: 5),
              Text(
                '129',
                style: textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                'pts',
                style: textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
