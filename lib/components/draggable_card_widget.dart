import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

class DraggableCardWidget extends StatefulWidget {
  final Map<int, String> options;
  final Map<int, dynamic> scoreMap;
  bool isConcluded;
  final String question;
  final int correctOption;
  final String character;
  int answer;
  DraggableCardWidget({
    Key? key,
    required this.options,
    required this.scoreMap,
    required this.correctOption,
    required this.question,
    this.isConcluded = false,
    required this.character,
    this.answer = -1,
  }) : super(key: key);

  @override
  State<DraggableCardWidget> createState() => _DraggableCardWidgetState();
}

class _DraggableCardWidgetState extends State<DraggableCardWidget> {
  // Variable for moving.
  Vector3 currentOffset = Vector3.zero();

  // Variables for horizontal moving.
  double currentZAngleOffset = 0;

  // Variable for select some option of answer:
  // - 0, for nothing;
  // - 1, for up;
  // - 2, for right;
  // - 3, for down;
  // - 4, for left;
  int optionSelected = 0;

  double limitForMoving = 35;

  String? showOption() {
    if (currentOffset.x > 0) {
      return widget.options[2];
    } else if (currentOffset.x < 0) {
      return widget.options[4];
    } else if (currentOffset.y < 0) {
      return widget.options[1];
    } else if (currentOffset.y > 0) {
      return widget.options[3];
    }
    return '';
  }

  updateConcluded(int option) {
    if (option > 0 && option <= 4) {
      widget.isConcluded != widget.isConcluded;
      widget.answer = option;
    }
  }

  void updateContainer(DragUpdateDetails details) {
    currentOffset.add(Vector3(details.delta.dx, details.delta.dy, 0));
    if ((currentOffset.length).abs() < limitForMoving) {
      setState(() {
        if (optionSelected == 0) {
          if (details.delta.dx > 0) {
            currentZAngleOffset += details.delta.distance * pi / 360;
          } else if (details.delta.dx < 0) {
            currentZAngleOffset -= details.delta.distance * pi / 360;
          }
        }
      });
    }
  }

  selectOption() {
    if (currentOffset.y <= -limitForMoving) {
      optionSelected = 1;
    } else if (currentOffset.x >= limitForMoving) {
      optionSelected = 2;
    } else if (currentOffset.y >= limitForMoving) {
      optionSelected = 3;
    } else if (currentOffset.x <= -limitForMoving) {
      optionSelected = 4;
    }
    updateConcluded(optionSelected);
  }

  void resetContainer(details) {
    if (currentOffset.length.abs() >= limitForMoving) {
      selectOption();
    }
    setState(() {
      currentOffset = Vector3.zero();
      currentOffset = Vector3.zero();
      currentZAngleOffset = 0;
      optionSelected = 0;
    });
  }

  AlignmentGeometry positionText() {
    if (currentOffset.x > 0) {
      return Alignment.centerRight;
    } else if (currentOffset.x < 0) {
      return Alignment.centerLeft;
    } else if (currentOffset.y < 0) {
      return Alignment.topCenter;
    } else if (currentOffset.y > 0) {
      return Alignment.bottomCenter;
    }
    return Alignment.center;
  }

  TextAlign textAlignment() {
    if (currentOffset.x > 0) {
      return TextAlign.right;
    } else if (currentOffset.x < 0) {
      return TextAlign.left;
    }
    return TextAlign.center;
  }

  AlignmentGeometry gradientBeginAlignment() {
    if (currentOffset.x > 0) {
      return Alignment.centerRight;
    } else if (currentOffset.x < 0) {
      return Alignment.centerLeft;
    } else if (currentOffset.y < 0) {
      return Alignment.topCenter;
    } else if (currentOffset.y > 0) {
      return Alignment.bottomCenter;
    }
    return Alignment.center;
  }

  AlignmentGeometry gradientEndAlignment() {
    if (currentOffset.x > 0) {
      return Alignment.centerLeft;
    } else if (currentOffset.x < 0) {
      return Alignment.centerRight;
    } else if (currentOffset.y < 0) {
      return Alignment.bottomCenter;
    } else if (currentOffset.y > 0) {
      return Alignment.topCenter;
    }
    return Alignment.center;
  }

  @override
  Widget build(BuildContext context) {
    double sizeCard = MediaQuery.of(context).size.width * 0.7;
    return GestureDetector(
      onVerticalDragUpdate: updateContainer,
      onVerticalDragEnd: resetContainer,
      onHorizontalDragUpdate: updateContainer,
      onHorizontalDragEnd: resetContainer,
      child: Container(
        width: sizeCard,
        height: sizeCard,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.50),
                blurRadius: 4,
                offset: const Offset(0, 4))
          ],
        ),
        transformAlignment: AlignmentDirectional.bottomCenter,
        transform: Matrix4.compose(
          (currentOffset.x).abs() > 0 ? currentOffset : currentOffset,
          Quaternion.axisAngle(Vector3(0, 0, 1), currentZAngleOffset),
          Vector3(1, 1, 1),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(
              widget.character,
              height: sizeCard,
              alignment: Alignment.center,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: gradientBeginAlignment(),
                  end: gradientEndAlignment(),
                  colors: [
                    Colors.black.withOpacity(
                        (5 * currentOffset.length / sizeCard) < 0.75
                            ? (5 * currentOffset.length / sizeCard)
                            : 0.75),
                    Colors.black.withOpacity(0)
                  ],
                ),
              ),
              child: Align(
                  child: Text(
                    showOption()!,
                    textAlign: textAlignment(),
                    style: TextStyle(
                      fontSize: 20,
                      color: (currentOffset + currentOffset).length == 0
                          ? Colors.transparent
                          : Colors.white.withOpacity(
                              currentOffset.length / 20 <= 1
                                  ? (currentOffset.length) / 50
                                  : 1),
                    ),
                  ),
                  alignment: positionText()),
            ),
          ],
        ),
      ),
    );
  }
}
