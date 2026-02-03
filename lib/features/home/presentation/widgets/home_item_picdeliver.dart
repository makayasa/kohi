import 'package:flutter/material.dart';

class HomeItemPickdeliv extends StatelessWidget {
  const HomeItemPickdeliv({
    super.key,
    this.text = 'Pickup',
    required this.assets,
  });
  final String text;
  final String assets;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 35,
            child: Image.asset(
              assets,
              color: theme.colorScheme.secondary,
            ),
          ),
          const SizedBox(width: 5),
          // DefText(text, fontWeight: FontWeight.bold).large,
          Text(
            text,
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
