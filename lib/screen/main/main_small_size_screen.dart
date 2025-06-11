import 'package:flutter/material.dart';

import 'main_screen_portfolio_button.dart';

class MainSmallSizeScreen extends StatefulWidget {
  const MainSmallSizeScreen({super.key});

  @override
  State<MainSmallSizeScreen> createState() => _MainSmallSizeScreenState();
}

class _MainSmallSizeScreenState extends State<MainSmallSizeScreen> {
  String imageValue = 'assets/images/img_default.jpeg';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              width: screenWidth,
              height: screenHeight/2 - 40,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.asset(imageValue),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
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
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
