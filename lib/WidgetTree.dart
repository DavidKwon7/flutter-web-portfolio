import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ResponsiveLayout.dart';
import 'package:untitled/screen/main/MainScreenSmallSize.dart';

import 'main.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
            smallLayout: MainScreenSmallSize(),
            mediumLayout: MainScreenSmallSize(),
            largeLayout: MyHomePage(title: 'large',)
        )
    );
  }
}
