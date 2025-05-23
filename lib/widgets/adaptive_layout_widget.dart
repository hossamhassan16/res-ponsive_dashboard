import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: mobileLayout(context),
        );
      } else if (constrains.maxWidth < 900) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: tabletLayout(context),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: desktopLayout(context),
        );
      }
    });
  }
}
