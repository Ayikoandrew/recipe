import 'package:flutter/material.dart';
import 'package:recipe/responsive/responsive_breakpoints.dart';
import 'package:recipe/presentation/mobile_page.dart';

class IntelligentWidget extends StatelessWidget {
  const IntelligentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenWidth = screenSize.width;

    double? calculateWidth(double width) {
      if (ResponsiveBreakpoints.isDesktop(width)) {
        return screenWidth;
      } else if (ResponsiveBreakpoints.isTablet(width)) {
        return screenWidth;
      } else {
        return screenWidth;
      }
    }

    double? calculateHeight(double width) {
      if (ResponsiveBreakpoints.isDesktop(width)) {
        return width * 0.70;
      } else if (ResponsiveBreakpoints.isTablet(width)) {
        return width * 0.80;
      } else {
        return width * 0.90;
      }
    }

    // double? _calculateComponentHeight(double width) {
    //   final height = _calculateWidth(width);
    // }

    Color chooseColor(double width) {
      if (ResponsiveBreakpoints.isDesktop(width)) {
        return Colors.blue[600]!;
      } else if (ResponsiveBreakpoints.isTablet(width)) {
        return Colors.orange[600]!;
      } else {
        return Colors.green[600]!;
      }
    }

    return Container(
      width: calculateWidth(screenWidth),
      height: calculateHeight(screenWidth),
      color: chooseColor(screenWidth),
      child: _buildContent(screenWidth),
    );
  }

  Widget _buildContent(double width) {
    if (ResponsiveBreakpoints.isDesktop(width)) {
      return Container();
    } else if (ResponsiveBreakpoints.isTablet(width)) {
      return Container();
    } else {
      return MobilePage();
    }
  }
}
