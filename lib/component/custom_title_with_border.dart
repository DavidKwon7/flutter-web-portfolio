import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

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
          const Expanded(child: Divider()),
          const SizedBox(width: 8,),
          CustomBodyText(text: title,),
          const SizedBox(width: 8,),
          const Expanded(child: Divider()),
        ]
    );
  }
}
