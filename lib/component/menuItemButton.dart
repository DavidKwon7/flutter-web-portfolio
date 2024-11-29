import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class PortfolioMenuItemButton extends StatefulWidget {
  const PortfolioMenuItemButton({
    super.key,
    required this.onTap,
    required this.routeName,
    required this.buttonText,
    required this.enteredInButton,
    required this.hoveringOnButton,
    required this.exitFromButton,
  });

  final Function()? onTap;
  final String routeName;
  final String buttonText;
  final VoidCallback enteredInButton;
  final VoidCallback hoveringOnButton;
  final VoidCallback exitFromButton;

  @override
  State<PortfolioMenuItemButton> createState() =>
      _PortfolioMenuItemButtonState();
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
              onTap: (){

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
            )),
      ],
    );
  }
}




class CompanyCard extends StatefulWidget {
  final Function onEnter;
  final Function onHover;
  final Function onExit;
  final String title;
  final VoidCallback onTap;

  const CompanyCard({
    super.key,
    required this.onEnter,
    required this.onHover,
    required this.onExit,
    required this.title,
    required this.onTap,
  });

  @override
  _CompanyCardState createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  String _imageValue = 'assets/images/img_default.jpeg'; // Default image

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: false,
      onEnter: (_) => widget.onEnter(_updateImage('assets/images/img_hover.jpeg')),
      onHover: (_) => widget.onHover(_updateImage('assets/images/img_hover.jpeg')),
      onExit: (_) => widget.onExit(_updateImage('assets/images/img_default.jpeg')),
      /*onEnter: () => widget.onEnter(_updateImage('assets/images/img_hover.jpeg')),
      onHover: () => widget.onHover(_updateImage('assets/images/img_hover.jpeg')),
      onExit: () => widget.onExit(_updateImage('assets/images/img_default.jpeg')),*/
      child: GestureDetector(
        onTap: widget.onTap,
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
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  void _updateImage(String newImage) {
    setState(() {
      _imageValue = newImage;
    });
  }
}

/*class CompanyCard extends StatelessWidget {
  final Function onEnter;
  final Function onHover;
  final Function onExit;
  final String title;
  final VoidCallback onTap;

  const CompanyCard({
    Key? key,
    required this.onEnter,
    required this.onHover,
    required this.onExit,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: false,
      onEnter: onEnter(), *//*(_) {
        // Update image on hover
        // You can consider using a state management solution
        // for more complex scenarios
        imageValue = hoverImage;
      }*//*
      onHover: onHover(),
      onExit: onExit(),
      child: GestureDetector(
        onTap: onTap,
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
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}*/
