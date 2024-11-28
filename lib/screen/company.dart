import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/component/CustomText.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('회사 상세 경력'),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitleText(text: "래티브 (2023.02 ~ 재직 중)"),
                Text("최근 스파이더 크래프트에서 래티브로 사명을 변경하였습니다.\n오토바이를 기반으로 음식점과 소비자를 연결하는 배달대행 분야 스타트업입니다."),

                SizedBox(height: 12.0,),
                CustomBodyText(text: '기존 App 유지 보수 (2023.02 ~ 2023.06) (2024.02 ~ 진행 중)'),
                Text('  -Java → koltin + clean Architecture 변환 및 코드 리팩토링 '),
                Text('  -요청사항에 따른 기능 추가 개발 및 화면 개발 및 수정 (묶음 배송, 회사 별 사운드 설정, 메신저 및 채팅 개편, 메인화면 통계 기능 추가 등)'),
                Text('  -naver map / kakao map / tmap 기반 묶음 배송 UI 생성 '),
                Text('  -Architecture 구조 변경 (hilt 도입, viewModel 적용 + clean Architecture)'),
                Text('  -브랜드 flavor 생성 및 플레이스토어 관리 '),
                Text('  -locationManager 및 sensorManager를 활용하여 사용자 방향에 따라 바뀌는 화살표 마커 기능 추가'),

                SizedBox(height: 12.0,),
                CustomBodyText(text: '기사 App 통합 및 버전 업 (2023.08~2023.11)'),
                Text('  -Jetpack Compose 활용'),
                Text('  -feature 화면 개발'),
                Text('  -MVI 패턴 적용'),

                SizedBox(height: 12.0,),
                CustomBodyText(text: '신규 화환 배달 App 개발 (2023.06~2023.08)(2023.11 ~ 2024.02)(2023.04 ~ 2024.07)'),
                Text('  -개발 및 Architecture 설계 참여 '),
                Text('  -Jetpack Compose 활용 '),
                Text('  -feature 화면 개발'),
                Text('  -내부 로직 개발 및 수정 '),
                Text('  -1차 개발 이후, 마일리지 관련 데이터가 추가되면서 화면 전체 개편.'),
                Text('  -성능 향상을 위한 recomposition 관련 리팩토링'),

                SizedBox(height: 12.0,),
                CustomBodyText(text: '상점 App 리뉴얼'),
                Text('  -수정된 디자인에 맞춰 화면, 컴포넌트 관련 코드 전체 개편 '),
                Text('  -API 통신 개편'),
                Text('  -기존 코드 refactoring'),

                SizedBox(height: 12.0,),
                CustomBodyText(text: '스터디'),
                Text('｢함수형 코딩｣ 북스터디 개설 및 코드 적용 (2024.04 ~ 2024.06)')
              ],
            )));
  }
}
