import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioMenuItemButton extends StatefulWidget {
  const PortfolioMenuItemButton({
    super.key,
    required this.routeName,
    required this.buttonText,
    required this.enteredInButton,
    required this.hoveringOnButton,
    required this.exitFromButton,
  });

  final String routeName;
  final String buttonText;
  final VoidCallback enteredInButton;
  final VoidCallback hoveringOnButton;
  final VoidCallback exitFromButton;

  @override
  State<PortfolioMenuItemButton> createState() => _PortfolioMenuItemButtonState();
}

class _PortfolioMenuItemButtonState extends State<PortfolioMenuItemButton> {

  String status = '';

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
                // status = 'Mouse Entered in region';
                widget.enteredInButton;
              });

            },
            onHover: (s) {

              setState(() {
                // status = 'Mouse-hovering on region';
                widget.hoveringOnButton;
              });
            },
            onExit: (s) {

              setState(() {
                // status = 'Mouse exit from region';
                widget.exitFromButton;
              });
            },
            child: GestureDetector(
              onTap: () {
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
                child: Text(widget.buttonText),
              ),
            )
        ),
      ],
    );
  }
}
