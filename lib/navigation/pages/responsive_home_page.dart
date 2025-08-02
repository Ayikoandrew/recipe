import 'package:flutter/material.dart';
import 'package:recipe/presentation/desktop_page.dart';
import 'package:recipe/presentation/mobile_page.dart';

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final width = constrains.maxWidth;

        if (width >= 1200) {
          return DesktopPage();
        } else if (width >= 600) {
          return DesktopPage();
        } else {
          return MobilePage();
        }
      },
    );
  }
}
