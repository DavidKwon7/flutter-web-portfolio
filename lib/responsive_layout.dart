import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget smallLayout;
  final Widget mediumLayout;
  final Widget largeLayout;

  const ResponsiveLayout({
    required this.smallLayout,
    required this.mediumLayout,
    required this.largeLayout
});

  static const int smallWidth = 600;
  static const int mediumWidth = 1100;

  static bool isSmall(BuildContext context) =>
    MediaQuery.of(context).size.width < smallWidth;

  static bool isMediumWidth(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumWidth;

  static bool isLargeWidth(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth < smallWidth) {
            return smallLayout;
          }
          if(constraints.maxWidth < mediumWidth) {
            return mediumLayout;
          }
          return largeLayout;
        });
  }
}
