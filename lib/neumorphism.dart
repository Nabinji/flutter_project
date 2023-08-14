import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeumorphismPage extends StatefulWidget {
  const NeumorphismPage({Key? key}) : super(key: key);

  @override
  State<NeumorphismPage> createState() => _NeumorphismPageState();
}

class _NeumorphismPageState extends State<NeumorphismPage> {
  bool isElevated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isElevated = !isElevated;
            });
          },
          child: AnimatedContainer(
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(50),
                boxShadow: isElevated
                    ? [
                        const BoxShadow(
                          color: Colors.black87,
                          offset: Offset(-3, -3),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 5),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                      ]
                    : null),
            height: 200,
            width: 200,
            duration: const Duration(milliseconds: 200),
            child: Center(
              child: Icon(
                isElevated
                    ? FontAwesomeIcons.heartCircleCheck
                    : FontAwesomeIcons.heartCircleBolt,
                size: 100,
                color: isElevated ? Colors.red : Colors.grey[400],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
