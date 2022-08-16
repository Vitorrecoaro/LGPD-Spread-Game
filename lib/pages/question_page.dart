import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lgpd_spread_game/components/default_scaffold_widget.dart';
import 'package:lgpd_spread_game/components/draggable_card_widget.dart';
import '../getX/game_controller.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  // Variable for control state on game.
  final GameController ctr = Get.find();

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    double sizeCard = 0.70 * sizeW;

    return DefaultScaffoldWidget(
      body: GetBuilder(
          init: GameController(),
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sizeH * 0.30,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Text(
                            ctr.actualCards.isEmpty
                                ? 'Não há ninguém por aqui'
                                : ctr.actualCards.values.last.question,
                            style: const TextStyle(fontSize: 24),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    ctr.actualCards.isEmpty
                        ? const Text('Você deve voltar para casa.')
                        : Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: sizeCard,
                                  height: sizeCard,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color: const Color(0xFF1E3640),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.50),
                                          blurRadius: 4,
                                          offset: const Offset(0, 4))
                                    ],
                                  ),
                                ),
                                ctr.actualCards.values.last
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
