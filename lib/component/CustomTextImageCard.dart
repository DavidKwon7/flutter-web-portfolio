import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextImageCard extends StatelessWidget {
  const CustomTextImageCard({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white38,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 이미지로 변경해주기
            Container(
              color: Colors.white70,
              width: 80,
              height: 80,
              child: Image.asset(image),
            ),
            SizedBox(height: 12,),
            Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }
}
