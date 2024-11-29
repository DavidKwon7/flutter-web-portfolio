import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ResponsiveLayout.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio'),
        ),
        body: ResponsiveLayout(
            smallLayout: Column(
              /// TODO Widget 생성
            ),
            mediumLayout: Column(
              /// TODO Widget 생성
            ),
            largeLayout: Column(
              /// TODO Widget 생성
            )
        )
    );
  }
}
