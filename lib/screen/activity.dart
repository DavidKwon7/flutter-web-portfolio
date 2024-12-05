import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/component/CustomText.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('다양한 활동'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12.0),
          child: Column(
              children: [
                CustomTitleText(text: 'Google Developer Group(GDG) Incheon Organizer'),
                CustomBodyText(text: '2021.10 ~ 진행 중'),
                Container(
                  color: Colors.amberAccent,
                  padding: EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
                  child: Text('\u{1F31F} 다양한 개발자를 만나 교류하며, 흥미로운 기술에 대해 같이 공부하고, 공유하며 개발에 대해 배우고 있습니다. GDG 활동을 하면서 더 많은 개발자들과 만나 교류하며, 뛰어난 개발자가 되어 많은 이들이 도울 수 있는 개발 지식을 공유하며 그 과정에서 함께 성장하는 것이 목표입니다.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                CustomTitleText(text: '발표'),

                CustomBodyText(text: '2023년 발표 리스트'),
                HyperlinkText(
                  text: 'HelloWorld 2023 발표 - wear os 101',
                  url: 'https://speakerdeck.com/davidkwon7/wearos-101',
                ),
                HyperlinkText(
                    text: 'KontlinConf’23 발표 - flow 느껴보기',
                    url: 'https://speakerdeck.com/davidkwon7/flow-neuggyeobogi'
                ),
                HyperlinkText(
                  text: '2023.06 Google I/O Extended(Incheon) 발표 - relay 및 compose를 사용하여 완전한 앱 빌드하기',
                  url: 'https://speakerdeck.com/davidkwon7/relay-mic-composereul-sayonghayeo-wanjeonhan-aeb-bildeuhagi',
                ),
                Text('Mobile App Developer Conf(MADC) 토크 패널 참여'),
                HyperlinkText(
                    text: 'DevFest’23 발표 - UI Test with compose',
                    url: 'https://speakerdeck.com/davidkwon7/ui-test-with-compose'
                ),

                SizedBox(height: 20.0,),

                CustomBodyText(text: '2024년 발표 리스트'),
                HyperlinkText(
                  text: '2024.03 HelloWorld 24 발표 - 모바일 플랫폼별 선언형 UI 살펴보기',
                  url: 'https://docs.google.com/presentation/d/1Jv5qosD6bwKZLPguKWevW8r0B41j0VbaRUkJydnvCt4/edit#slide=id.g2c5f9ab8e71_2_60',
                ),
                HyperlinkText(
                  text: '2024.06 kotlinConf’24 발표 - Refactoring to expressive kotlin ',
                  url: 'https://speakerdeck.com/davidkwon7/refactoring-to-expressive-kotlin',
                ),
                HyperlinkText(
                    text: '2024.07 Google I/O Extended(Incheon) 발표 - Jetpack Glance 살펴보기',
                    url: 'https://speakerdeck.com/davidkwon7/jetpack-glance'),

                SizedBox(height: 40.0,),
                CustomTitleText(text: '스터디'),
                SizedBox(height: 10.0,),
                Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '｢오브젝트｣', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                          TextSpan(text: '북스터디')
                        ]
                    )
                ),
                Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Android Jetpack Compose ', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                          TextSpan(text: '스터디')
                        ]
                    )
                ),
              ],
          ),
        ),
      ),
    );
  }
}
