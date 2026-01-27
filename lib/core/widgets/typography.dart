import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Typography extends StatelessWidget {
  const Typography({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: .symmetric(horizontal: 10),
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        children: [
          const SizedBox(height: 40),
          Text(
            'Hi, Makayasa display large',
            style: textTheme.displayLarge,
          ),
          Text(
            'Hi, Makayasa display medium',
            style: textTheme.displayMedium,
          ),
          Text(
            'Hi, Makayasa display small',
            style: textTheme.displaySmall,
          ),
          const SizedBox(height: 10),
          Text(
            'Hi, Makayasa headline large',
            style: textTheme.headlineLarge,
          ),
          Text(
            'Hi, Makayasa headline medium',
            style: textTheme.headlineMedium,
          ),
          Text(
            'Hi, Makayasa headline small',
            style: textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          Text(
            'Hi, Makayasa title large',
            style: textTheme.titleLarge,
          ),
          Text(
            'Hi, Makayasa title medium',
            style: textTheme.titleMedium,
          ),
          Text(
            'Hi, Makayasa title small',
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 10),
          Text(
            'Hi, Makayasa body large',
            style: textTheme.bodyLarge,
          ),
          Text(
            'Hi, Makayasa body medium',
            style: textTheme.bodyMedium,
          ),
          Text(
            'Hi, Makayasa body small',
            style: textTheme.bodySmall,
          ),
          const SizedBox(height: 10),
          Text(
            'Hi, Makayasa label large',
            style: textTheme.labelLarge,
          ),
          Text(
            'Hi, Makayasa label medium',
            style: textTheme.labelMedium,
          ),
          Text(
            'Hi, Makayasa label small',
            style: textTheme.labelSmall,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
