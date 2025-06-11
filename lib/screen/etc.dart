import 'package:flutter/material.dart';

class Etc extends StatelessWidget {
  const Etc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기타'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: const Column(
          children: [
            SizedBox(height: 40.0,),
            Text(
              '- Incheon National University (2022.02 졸업)'
                  '\n전공 : NanoBio Engineering 편입 후 졸업'
                  '\n'
                  '\n'
                  '\n- 육군 만기 전역 (2018.04 ~ 2020.12)',
            ),
          ],
        ),
      )
    );
  }
}
