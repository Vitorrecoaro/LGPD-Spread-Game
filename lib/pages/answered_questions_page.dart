import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lgpd_spread_game/components/default_scaffold_widget.dart';
import 'package:lgpd_spread_game/components/draggable_card_widget.dart';
import 'package:lgpd_spread_game/getX/game_controller.dart';

import '../components/default_scaffold_widget.dart';

class AnsweredQuestionsPage extends StatefulWidget {
  const AnsweredQuestionsPage({Key? key}) : super(key: key);

  @override
  State<AnsweredQuestionsPage> createState() => _AnsweredQuestionsPageState();
}

class _AnsweredQuestionsPageState extends State<AnsweredQuestionsPage> {
  GameController ctr = Get.find();
  late DraggableCardWidget question;
  late List<bool> isExpandedList;
  late Map optionCard;
  late List allQuestions;

  @override
  void initState() {
    super.initState();
    List<bool> isExpandedList = List.filled(ctr.correctCards.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffoldWidget(
      body: ExpansionPanelList(
        expansionCallback: ((panelIndex, isExpanded) => setState(
              () {
                isExpandedList[panelIndex] = !isExpanded;
              },
            )),
        children: [
          for (question in allQuestions)
            ExpansionPanel(
              headerBuilder: ((context, isExpanded) =>
                  Text(question!.question)),
              body: const Text(''),
            ),
        ],
      ),
    );
  }
}
