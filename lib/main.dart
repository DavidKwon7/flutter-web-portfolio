import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/WidgetTree.dart';
import 'package:untitled/component/menuItemButton.dart';
import 'package:untitled/screen/aboutMe.dart';
import 'package:untitled/screen/activity.dart';
import 'package:untitled/screen/company.dart';
import 'package:untitled/screen/etc.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the key of the app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Mouse Region',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetTree(),//MyHomePage(title: 'Flutter Mouse Region'),
      routes: {
        '/about_me' : (context) => const AboutMe(),
        '/company' : (context) => const Company(),
        '/activity' : (context) => const Activity(),
        '/etc' : (context) => const Etc(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title;
  MyHomePage({required this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String imageValue = 'assets/images/img_default.jpeg';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 20.0),
                // child: Text('Mouse Status : $status'),
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
              )
            )
          ],
        ),
      ),
    );
  }
}


class PortfolioItemButton extends StatefulWidget {
  const PortfolioItemButton({super.key, required this.routeName});

  final String routeName;

  @override
  State<PortfolioItemButton> createState() => _PortfolioItemButtonState();
}

class _PortfolioItemButtonState extends State<PortfolioItemButton> {
  String status = ''; // 이 값이 여기에만 속하는 변수이기 때문에, 값이 변하지 않음. => 수정필요

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
            cursor: SystemMouseCursors.click,
            opaque: false,
            onEnter: (s) {

              setState(() {

                status = 'Mouse Entered in region';
              });
            },
            onHover: (s) {

              setState(() {

                status = 'Mouse-hovering on region';
              });
            },
            onExit: (s) {

              setState(() {

                status = 'Mouse exit from region';
              });
            },
            child: GestureDetector(
              onTap: () {
                /// 웹에서는 로그가 안 찍혀서, 모바일로 제대로 클릭기능 동작하는 것 확인
                print('this is mouse region click button');
                Navigator.of(context).pushNamed(widget.routeName);
              },
              child: Container(

                height: 60.0,
                width: 60.0,

                decoration: BoxDecoration(
                  color: Colors.blueAccent,

                  borderRadius: BorderRadius.circular(15.0),

                  border: Border.all(color: Colors.blueAccent),
                ),
              ),
            )
        ),
      ],
    );
  }
}

