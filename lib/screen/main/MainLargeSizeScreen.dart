import 'package:flutter/material.dart';

import 'MainScreenPortfolioButton.dart';

class MainLargeSizeScreen extends StatefulWidget {
  const MainLargeSizeScreen({
    super.key,
  });

  @override
  State<MainLargeSizeScreen> createState() => _MainLargeSizeScreenState();
}

class _MainLargeSizeScreenState extends State<MainLargeSizeScreen> {
  String imageValue = 'assets/images/img_default.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(imageValue),
                )
            ),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MainScreenPortfolioButton(
                          text: '나에 대해서',
                          routeName: '/about_me',
                          hoverImage: 'assets/images/img_about_me.jpeg',
                          onHoverImage: (imagePath) {
                            setState(() {
                              imageValue = imagePath;
                            });
                          },
                          onExitImage: () {
                            setState(() {
                              imageValue = 'assets/images/img_default.jpeg';
                            });
                          },
                        ),
                        const SizedBox(width: 40.0),

                        MainScreenPortfolioButton(
                          text: '회사 경력 상세',
                          routeName: '/company',
                          hoverImage: 'assets/images/img_company.jpeg',
                          onHoverImage: (imagePath) {
                            setState(() {
                              imageValue = imagePath;
                            });
                          },
                          onExitImage: () {
                            setState(() {
                              imageValue = 'assets/images/img_default.jpeg';
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      children: [
                        MainScreenPortfolioButton(
                          text: '다양한 활동',
                          routeName: '/activity',
                          hoverImage: 'assets/images/img_activity.JPG',
                          onHoverImage: (imagePath) {
                            setState(() {
                              imageValue = imagePath;
                            });
                          },
                          onExitImage: () {
                            setState(() {
                              imageValue = 'assets/images/img_default.jpeg';
                            });
                          },
                        ),

                        const SizedBox(width: 40.0),

                        MainScreenPortfolioButton(
                          text: '기타',
                          routeName: '/etc',
                          hoverImage: 'assets/images/img_etc.jpg',
                          onHoverImage: (imagePath) {
                            setState(() {
                              imageValue = imagePath;
                            });
                          },
                          onExitImage: () {
                            setState(() {
                              imageValue = 'assets/images/img_default.jpeg';
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
