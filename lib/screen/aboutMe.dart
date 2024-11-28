import 'package:flutter/material.dart';
import 'package:untitled/component/CustomText.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나에 대해서'),
      ),
      body: Center(
        child: Column(
          children: [
            CustomTitleText(text: '가치관'),
            Text('재미를 추구하며 살고 있습니다. 그리고 항상 배우려는 자세로 살아가려 노력하고 있습니다. '),
            SizedBox(height: 20,),

            CustomTitleText(text: '기술 스택'),
            CustomBodyText(text: 'Android'),
            Text('- Compose'),
            Text('- Hilt'),
            Text('- Coroutine / Flow'),
            Text('- Retrofit'),
            Text('- Room'),
            SizedBox(height: 10,),

            CustomBodyText(text: 'Version Control, CI/CD'),
            Text('- Git / Github / GithubAction'),
            SizedBox(height: 10,),

            CustomBodyText(text: 'ETC'),
            Text('- Notion'),
            Text('- Slack'),
            SizedBox(height: 20,),

            CustomBodyText(text: '사이드 프로젝트'),

          ],
        ),
      ),
    );
  }
}
