import 'package:flutter/material.dart';

class HomeOrderType extends StatelessWidget {
  const HomeOrderType({
    required this.label,
    // required this.description,
    this.isDelivery = true,
    super.key,
  });
  final String label;
  // final String description;
  final bool isDelivery;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Expanded(
      child: Container(
        padding: .symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainer,
          borderRadius: .circular(8),
        ),
        child: Row(
          mainAxisAlignment: .center,
          children: [
            // Column(
            //   crossAxisAlignment: .start,
            //   children: [
            //     Text(
            //       label,
            //       style: textTheme.headlineSmall!.copyWith(
            //         color: theme.colorScheme.onSurfaceVariant,
            //         fontWeight: FontWeight.w900,
            //       ),
            //     ),
            //     // const SizedBox(height: 5),
            //     // Text(
            //     //   description,
            //     //   style: textTheme.bodySmall!.copyWith(
            //     //     color: theme.colorScheme.onSurfaceVariant,
            //     //     fontWeight: FontWeight.w900,
            //     //   ),
            //     // ),
            //   ],
            // ),
            Text(
              label,
              style: textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(width: 15),
            // Spacer(),
            SizedBox(
              height: 40,
              child: Image.asset(
                isDelivery ? 'assets/delivery-man.png' : 'assets/coffee-shop.png',
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
