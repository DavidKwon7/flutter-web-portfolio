import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomText.dart';

class CustomTitleWithBorder extends StatelessWidget {
  const CustomTitleWithBorder({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
              child: Divider()
          ),
          SizedBox(width: 8,),
          CustomBodyText(text: title,),
          SizedBox(width: 8,),
          Expanded(
              child: Divider()
          ),
        ]
    );
  }
}
