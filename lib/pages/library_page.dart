import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lgpd_spread_game/components/default_scaffold_widget.dart';

import '../getX/game_controller.dart';

class LibraryPage extends StatelessWidget {
  LibraryPage({Key? key}) : super(key: key);

  GameController ctr = Get.find();

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return DefaultScaffoldWidget(
      body: Container(
        height: sizeH,
        width: sizeW,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/UI/library_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset('lib/assets/UI/Option.svg', height: 60),
                const Text(
                  'Bem vindo a biblioteca! O que desejas?',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ctr.changeLocation('Library');
                Navigator.pushReplacementNamed(context, '/questionPage');
              },
              child: const Text(
                'Aprender um pouco mais',
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(0.75 * sizeW),
                ),
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.surface),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Ver os meus registros',
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(0.75 * sizeW),
                ),
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.surface),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
