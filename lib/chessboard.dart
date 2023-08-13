import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChessBoard extends StatefulWidget {
  const ChessBoard({super.key});

  @override
  State<ChessBoard> createState() => _ChessBoardState();
}

class _ChessBoardState extends State<ChessBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ChessBoard"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Every time copy and pest this is not a good coding practice
              // We make reUsable Container
              // 8 row and 8 column

              Row(
                children: [
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessRook, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessKnight, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessBishop, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessQueen, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessKing, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessBishop, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessKnight, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessRook, Colors.black),
                ],
              ),
              Row(
                children: [
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.black),
                ],
              ),

              Row(
                children: [
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                ],
              ),

              Row(
                children: [
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                ],
              ),
              Row(
                children: [
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                ],
              ),
              Row(
                children: [
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                  greenContainer(),
                  whiteContainer(),
                ],
              ),
              Row(
                children: [
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessPawn, Colors.white),
                ],
              ),
              Row(
                children: [
                  greenIconContainer(
                      FontAwesomeIcons.solidChessRook, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessKnight, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessBishop, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessQueen, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessKing, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessBishop, Colors.white),
                  greenIconContainer(
                      FontAwesomeIcons.solidChessKnight, Colors.white),
                  whiteIconContainer(
                      FontAwesomeIcons.solidChessRook, Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  whiteIconContainer(icon, color) {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 173, 171, 171), border: Border.all()),
        child: Icon(icon, size: 45, color: color),
      ),
    );
  }

  greenIconContainer(icon, color) {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 2, 128, 6), border: Border.all()),
        child: Icon(
          icon,
          size: 45,
          color: color,
        ),
      ),
    );
  }

  greenContainer() {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 2, 128, 6), border: Border.all()),
      ),
    );
  }

  whiteContainer() {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 173, 171, 171), border: Border.all()),
      ),
    );
  }
}
