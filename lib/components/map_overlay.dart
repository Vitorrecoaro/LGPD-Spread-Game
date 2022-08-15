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
        child: Container(
      width: sizeW * 0.80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.50),
              blurRadius: 4,
              offset: const Offset(0, 4))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'lib/assets/UI/Option.svg',
                  ),
                  const Center(
                    child: Text(
                      'Selecione seu destino',
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.background),
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(sizeW * 0.65),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/cassandraHome');
              },
              child: Text(
                'Tenda da Cassandra',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 18,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.background),
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(sizeW * 0.65),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/library');
              },
              child: Text(
                'Biblioteca',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
