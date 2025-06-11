import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreenPortfolioButton extends StatelessWidget {
  const MainScreenPortfolioButton({
    super.key,
    required this.text,
    required this.routeName,
    required this.hoverImage,
    required this.onHoverImage,
    required this.onExitImage,
  });

  final String text;
  final String routeName;
  final String hoverImage;
  final ValueChanged<String> onHoverImage;
  final VoidCallback onExitImage;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: false,
      onEnter: (_) => onHoverImage(hoverImage),
      onHover: (_) => onHoverImage(hoverImage),
      onExit: (_) => onExitImage(),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(routeName);
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
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white, // 텍스트 색상을 추가하여 가독성 높임
            ),
          ),
        ),
      ),
    );
  }
}
