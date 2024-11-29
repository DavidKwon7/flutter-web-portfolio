import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../aboutMe.dart';
import '../activity.dart';
import '../company.dart';
import '../etc.dart';

class MainScreenSmallSize extends StatefulWidget {
  const MainScreenSmallSize({super.key});

  @override
  State<MainScreenSmallSize> createState() => _MainScreenSmallSizeState();
}

class _MainScreenSmallSizeState extends State<MainScreenSmallSize> {
  String imageValue = 'assets/images/img_default.jpeg';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: screenWidth,
              height: screenHeight/2 - 40,
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20.0),
              // child: Text('Mouse Status : $status'),
              child: Image.asset(imageValue),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    opaque: false,
                    onEnter: (s) {
                      setState(() {
                        // status = 'Mouse Entered in region';
                        imageValue = 'assets/images/img_about_me.jpeg';
                      });
                    },
                    onHover: (s) {
                      setState(() {
                        // status = '나에 대해서 ON';
                        imageValue = 'assets/images/img_about_me.jpeg';
                      });
                    },
                    onExit: (s) {
                      setState(() {
                        // status = '나에 대해서 OFF';
                        imageValue = 'assets/images/img_default.jpeg';
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutMe()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '나에 대해서',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(width: 40.0),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    opaque: false,
                    onEnter: (s) {
                      setState(() {
                        // status = 'Mouse Entered in region';
                        imageValue = 'assets/images/img_company.jpeg';
                      });
                    },
                    onHover: (s) {
                      setState(() {
                        // status = '회사 경력 상세 ON';
                        imageValue = 'assets/images/img_company.jpeg';
                      });
                    },
                    onExit: (s) {
                      setState(() {
                        // status = '회사 경력 상세 OFF';
                        imageValue = 'assets/images/img_default.jpeg';
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Company()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '회사 경력 상세',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    opaque: false,
                    onEnter: (s) {
                      setState(() {
                        imageValue = 'assets/images/img_activity.JPG';
                      });
                    },
                    onHover: (s) {
                      setState(() {
                        // status = '다양한 활동 ON';
                        imageValue = 'assets/images/img_activity.JPG';
                      });
                    },
                    onExit: (s) {
                      setState(() {
                        // status = '다양한 활동 OFF';
                        imageValue = 'assets/images/img_default.jpeg';
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Activity()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '다양한 활동',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(width: 40.0),
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    opaque: false,
                    onEnter: (s) {
                      setState(() {
                        imageValue = 'assets/images/img_etc.jpg';
                      });
                    },
                    onHover: (s) {
                      setState(() {
                        imageValue = 'assets/images/img_etc.jpg';
                      });
                    },
                    onExit: (s) {
                      setState(() {
                        imageValue = 'assets/images/img_default.jpeg';
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Etc()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '기타',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
