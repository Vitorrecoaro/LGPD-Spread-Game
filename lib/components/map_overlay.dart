import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../getX/game_controller.dart';

class MapOverlay extends StatelessWidget {
  MapOverlay({Key? key}) : super(key: key);
  GameController ctr = Get.find();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Image(image: AssetImage('lib/assets/UI/MapImage.png')),
            Positioned(
              left: 70,
              top: 235,
              child: TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size.fromWidth(
                      sizeW * 0.45,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/cassandraHome');
                },
                child: Stack(
                  children: [
                    Text(
                      'Tenda da Cassandra',
                      style: TextStyle(
                        fontSize: 24,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.5
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      'Tenda da Cassandra',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 360,
              top: 165,
              child: TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size.fromWidth(
                      sizeW * 0.45,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/library');
                },
                child: Stack(
                  children: [
                    Text(
                      'Biblioteca',
                      style: TextStyle(
                        fontSize: 24,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.5
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      'Biblioteca',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: 100,
              child: TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size.fromWidth(
                      sizeW * 0.45,
                    ),
                  ),
                ),
                onPressed: () {},
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Text(
                      'Taverna',
                      style: TextStyle(
                        fontSize: 24,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.5
                          ..color = Colors.white,
                      ),
                    ),
                    Text(
                      'Taverna',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Positioned(
                      top: 22,
                      child: Icon(
                        Icons.lock_outline,
                        size: sizeW * 0.075,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Icon(
                        Icons.lock_outline,
                        size: sizeW * 0.075,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
