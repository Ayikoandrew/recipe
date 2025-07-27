class ResponsiveBreakpoints {
  static const double mobile = 600;
  static const double tablet = 1200;

  static isMobile(double width) => width < mobile;
  static isTablet(double width) => width >= mobile && width < tablet;
  static isDesktop(double width) => width >= tablet;
}
