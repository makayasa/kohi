import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    this.child,
    this.height,
    this.width,
    super.key,
    this.onTap,
    this.showBorder = false,
    this.text,
  });
  final Function()? onTap;
  final Widget? child;
  final double? height;
  final double? width;
  final bool showBorder;
  final String? text;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: colorScheme.secondary,
      borderRadius: .circular(8),
      child: InkWell(
        borderRadius: .circular(8),
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: showBorder
              ? BoxDecoration(
                  border: Border.all(
                    // color: colorScheme.primaryContainer,
                  ),
                  borderRadius: .circular(10),
                )
              : null,
          padding: const EdgeInsets.all(10),
          child: text == null
              ? child
              : Center(
                  child: Text(
                    text!,
                    style: textTheme.titleMedium!.copyWith(
                      color: colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ),
    );
}
}
