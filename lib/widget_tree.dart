import 'package:flutter/material.dart';
import 'package:untitled/responsive_layout.dart';
import 'package:untitled/screen/main/main_large_size_screen.dart';
import 'package:untitled/screen/main/main_small_size_screen.dart';

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
