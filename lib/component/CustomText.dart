import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Title이 되는 Text에 대한 customText
class CustomTitleText extends StatefulWidget {
  final String text;

  const CustomTitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _CustomTitleTextState createState() => _CustomTitleTextState();
}

class _CustomTitleTextState extends State<CustomTitleText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: Text(
      widget.text,
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.w800
      ),
    ),
    );
  }
}

/// 기본 text에 대한 CustomText
class CustomBodyText extends StatefulWidget {
  const CustomBodyText({super.key, required this.text});

  final String text;

  @override
  State<CustomBodyText> createState() => _CustomBodyTextState();
}

class _CustomBodyTextState extends State<CustomBodyText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500
      ),
    );
  }
}

/// 하이퍼링크가 있는 텍스트
class HyperlinkText extends StatelessWidget {
  final String text;
  final String url;

  const HyperlinkText({Key? key, required this.text, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
    text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
        TextSpan(
        text: text,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()..onTap = () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    ],
    ),
    );
  }
}

