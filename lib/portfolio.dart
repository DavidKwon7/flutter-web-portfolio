import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'component/CustomTextStyle.dart';

/// [init] 처음 시작 이미지
/// [my] 나 설명 - 기술 스텍
/// [company] 회사 상세 경력
/// [community] 대외활동 - 이전에 진행했던 스터디 / 북스터디 / 모각코 / 발표리스트
/// [project] 사이드 프로젝트
/// [etc] 기타 내용 - 학력, 토익 ...
enum PortfolioImageFilter {
  init,
  my,
  company,
  community,
  project,
  etc
}


class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioBody();
  }
}

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    PortfolioImageFilter portfolioImageFilter = PortfolioImageFilter.init;

    return const Column(
      children: <Widget>[
        Text(
          "Portfolio Title",
          style: CustomTitleTextStyle.nameOfTextStyle,
          textAlign: TextAlign.start,
        ),
        Text(
          "Portfolio SubTitle",
          style: CustomSubTitleTextStyle.nameOfTextStyle,
        ),
        Divider(
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: Text('ex')
            ),
             Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('bbb'),
                  Text('ccc'),
                  Text('ddd'),
                  Text('fff'),
                ],
              ),
            ),
          ],
        )

      ],
    );
  }
}

String filteredTextValue(PortfolioImageFilter portfolioImageFilter) {
  switch(portfolioImageFilter) {
    case PortfolioImageFilter.init :
      return 'init';
      break;
    case PortfolioImageFilter.my :
      return 'my';
      break;
    case PortfolioImageFilter.community :
      return 'community';
    case PortfolioImageFilter.company :
      return 'company';
    case PortfolioImageFilter.etc :
      return 'etc';
    default :
      return 'default';
      break;
  }
}



