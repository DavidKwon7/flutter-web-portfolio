import 'package:flutter/material.dart';
import 'package:untitled/widget_tree.dart';
import 'package:untitled/screen/about_me.dart';
import 'package:untitled/screen/activity.dart';
import 'package:untitled/screen/company.dart';
import 'package:untitled/screen/etc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the key of the app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'HJ Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetTree(),
      routes: {
        '/about_me' : (context) => const AboutMe(),
        '/company' : (context) => const Company(),
        '/activity' : (context) => const Activity(),
        '/etc' : (context) => const Etc(),
      },
    );
  }
}