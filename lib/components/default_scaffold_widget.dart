import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lgpd_spread_game/components/map_overlay.dart';
import 'package:lgpd_spread_game/getX/game_controller.dart';

class DefaultScaffoldWidget extends StatefulWidget {
  final Widget body;
  const DefaultScaffoldWidget({Key? key, required this.body}) : super(key: key);

  @override
  State<DefaultScaffoldWidget> createState() => _DefaultScaffoldWidgetState();
}

class _DefaultScaffoldWidgetState extends State<DefaultScaffoldWidget> {
  GameController ctr = Get.find();
  bool openedMap = false;

  void openMapOverlay() {
    openedMap = !openedMap;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;

    return GetBuilder(
        init: GameController(),
        builder: (_) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniEndFloat,
            extendBody: true,
            floatingActionButton: ctr.showMap
                ? SizedBox(
                    height: sizeH * 0.10,
                    width: sizeH * 0.10,
                    child: FloatingActionButton(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      onPressed: openMapOverlay,
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: const Offset(2, 2),
                            child: SvgPicture.asset(
                              'lib/assets/UI/VectorMapButton.svg',
                              color: Colors.black38,
                            ),
                          ),
                          SvgPicture.asset('lib/assets/UI/VectorMapButton.svg'),
                        ],
                      ),
                      elevation: 4,
                    ),
                  )
                : null,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: ctr.showProgress
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Olá, ${ctr.player}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Progresso:',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 16,
                            ),
                          ),
                          GetBuilder<GameController>(builder: (_) {
                            return LinearProgressIndicator(
                              value: ctr.progress,
                              color: Theme.of(context).colorScheme.secondary,
                            );
                          }),
                        ],
                      )
                    : Center(
                        child: Text(
                          'Olá, ${ctr.player}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                        ),
                      ),
              ),
            ),
            body: Center(
              child: openedMap
                  ? Stack(children: [
                      widget.body,
                      Container(
                        decoration: const BoxDecoration(color: Colors.black54),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: MapOverlay()),
                      )
                    ])
                  : widget.body,
            ),
            // bottomNavigationBar: BottomAppBar(
            //   shape: const CircularNotchedRectangle(),
            //   color: Theme.of(context).colorScheme.primary,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Container(
            //         height: sizeH * 0.075,
            //       ),
            //       // Expanded(
            //       //   flex: 2,
            //       //   child: Padding(
            //       //     padding: const EdgeInsets.only(top: 10, bottom: 10),
            //       //     child: Icon(
            //       //       Icons.person,
            //       //       size: sizeH * 0.05,
            //       //     ),
            //       //   ),
            //       // ),
            //       // const Spacer(),
            //       // Expanded(
            //       //   flex: 2,
            //       //   child: Padding(
            //       //     padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            //       //     child: Icon(
            //       //       Icons.settings,
            //       //       size: sizeH * 0.05,
            //       //     ),
            //       //   ),
            //       // )
            //     ],
            //   ),
            // ),
          );
        });
  }
}
