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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white70,
              width: 80,
              height: 80,
              child: Image.asset(image),
            ),
            const SizedBox(height: 12,),
            Text(text,
              style: const TextStyle(
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
