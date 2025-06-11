import 'package:flutter/material.dart';
import 'package:untitled/ResponsiveLayout.dart';
import 'package:untitled/screen/main/MainLargeSizeScreen.dart';
import 'package:untitled/screen/main/MainScreenSmallSize.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
            smallLayout: MainSmallSizeScreen(),
            mediumLayout: MainSmallSizeScreen(),
            largeLayout: MainLargeSizeScreen(),
        )
    );
  }
}
