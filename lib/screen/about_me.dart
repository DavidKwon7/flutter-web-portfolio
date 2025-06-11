import 'package:flutter/material.dart';
import 'package:untitled/component/custom_text.dart';
import 'package:untitled/component/custom_text_image_card.dart';

import '../component/custom_title_with_border.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나에 대해서'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: const Column(
              children: [
                CustomTitleText(text: '가치관'),
                Text(
                    '혼자 가면 빨리 가지만 함께 가면 멀리 간다’ 라는 말처럼 동료들과 함께 나아가는 것을 선호합니다. 그렇기에 발표를 통해 지식을 공유하기도 하고, 스터디를 개설하며 동료들과 함께 성장하고 있습니다.'
                ),
                SizedBox(height: 20,),

                CustomTitleText(text: '기술 스택'),

                CustomTitleWithBorder(title: 'Android'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextImageCard(
                      image: 'assets/images/img_android.png',
                      text: 'Android 중급',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_compose.png',
                      text: 'Compose 중급',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_kotlin.png',
                      text: 'Kotlin 중급',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_java.png',
                      text: 'Java 초급',
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                CustomTitleWithBorder(title: 'Others'),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextImageCard(
                      image: 'assets/images/img_flutter.png',
                      text: 'Flutter, Dart 초급',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_code_igniter.png',
                      text: 'CodeIgniter, PHP 초급',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_sql.png',
                      text: 'SQL 초급',
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                CustomTitleWithBorder(title: 'ETC'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextImageCard(
                      image: 'assets/images/img_github.png',
                      text: 'Git / Github',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_notion.png',
                      text: 'Notion',
                    ),
                    CustomTextImageCard(
                      image: 'assets/images/img_slack.png',
                      text: 'Slack',
                    )
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
      ),
    );
  }
}
