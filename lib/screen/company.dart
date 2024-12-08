import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/component/CustomText.dart';

import '../component/CustomTitleWithBorder.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('회사 상세 경력'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  CustomTitleText(text: "래티브 (2023.02 ~ 재직 중)"),
                  Container(
                    width: double.infinity,
                    color: Colors.amberAccent,
                    padding: EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
                    child: Text('\u{1F6B2} 최근 스파이더 크래프트에서 래티브로 사명을 변경하였습니다.\n오토바이를 기반으로 음식점과 소비자를 연결하는 배달대행 분야 스타트업입니다.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0,),
                  CustomTitleWithBorder(title: '기존 App 유지 보수 (2023.02 ~ 진행 중)'),
                  SizedBox(height: 8.0,),
                  Text('  - Java → koltin + clean Architecture 변환 및 코드 리팩토링 '),
                  Text('  - 요청사항에 따른 기능 추가 개발 및 화면 개발 및 수정 (묶음 배송, 회사 별 사운드 설정, 메신저 및 채팅 개편, 메인화면 통계 기능 추가 등)'),
                  Text('  - naver map / kakao map / tmap 기반 묶음 배송 UI 생성 '),
                  Text('  - Architecture 구조 변경 (hilt 도입, viewModel 적용 + clean Architecture)'),
                  Text('  - 브랜드 flavor 생성 및 플레이스토어 관리 '),

                  SizedBox(height: 20.0,),
                  CustomTitleWithBorder(title: '기사 App 통합 및 버전 업 (2023.08~2023.11)'),
                  SizedBox(height: 8.0,),
                  Text('  - Jetpack Compose 활용'),
                  Text('  - feature 화면 개발'),
                  Text('  - MVI 패턴 적용'),

                  SizedBox(height: 20.0,),
                  CustomTitleWithBorder(title: '신규 화환 배달 App 개발 (2023.06 ~ 2024.07)'),
                  SizedBox(height: 8.0,),
                  Text('  - 개발 및 Architecture 설계 참여 '),
                  Text('  - Jetpack Compose 활용 '),
                  Text('  - feature 화면 개발'),
                  Text('  - 내부 로직 개발 및 수정 '),
                  Text('  - 1차 개발 이후, 마일리지 관련 데이터가 추가되면서 화면 전체 개편.'),
                  Text('  - 성능 향상을 위한 recomposition 관련 리팩토링'),

                  SizedBox(height: 20.0,),
                  CustomTitleWithBorder(title:  '상점 App 리뉴얼 (2024.07 ~ 진행 중)'),
                  SizedBox(height: 8.0,),
                  Text('  - 수정된 디자인에 맞춰 화면, 컴포넌트 관련 코드 전체 개편 '),
                  Text('  - API 통신 개편'),
                  Text('  - 기존 코드 refactoring'),

                  SizedBox(height: 20.0,),
                  CustomTitleWithBorder(title: '스터디'),
                  SizedBox(height: 8.0,),
                  Text('｢함수형 코딩｣ 북스터디 개설 및 코드 적용 (2024.04 ~ 2024.06)')
                ],
              ),
            )));
  }
}
