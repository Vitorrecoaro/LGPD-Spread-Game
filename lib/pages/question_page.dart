import 'package:flutter/material.dart';
import 'package:lgpd_spread_game/components/default_scaffold_widget.dart';

import '../components/draggable_card_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<DraggableCardWidget> cardList = [];

  updateList() {
    if (cardList.isNotEmpty) {
      cardList.removeLast();
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();

    cardList = [
      DraggableCardWidget(
        character: 'lib/assets/people/LGPD-Morena.svg',
        question: 'Escolha para a esquerda',
        correctOption: 3,
        options: const {
          1: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          3: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          4: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
        },
        scoreMap: const {
          1: {
            'sumLevel': true,
            'level': 2,
            'inteligence': '1',
            'sumInteligence': false
          },
          2: {
            'sumLevel': true,
            'level': 10,
            'inteligence': '5',
            'sumInteligence': true
          },
          3: {
            'sumLevel': true,
            'level': 2,
            'inteligence': '1',
            'sumInteligence': false
          },
          4: {
            'sumLevel': true,
            'level': 2,
            'inteligence': '1',
            'sumInteligence': false
          },
        },
        onCardDone: updateList,
      ),
      DraggableCardWidget(
        character: 'lib/assets/people/LGPD-Morena.svg',
        question: 'Escolha para a direita',
        correctOption: 3,
        options: const {
          1: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          3: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          4: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
        },
        scoreMap: const {
          1: {
            'sumLevel': true,
            'level': 2,
            'inteligence': '1',
            'sumInteligence': false
          },
          2: {
            'sumLevel': true,
            'level': 10,
            'inteligence': '5',
            'sumInteligence': true
          },
          3: {
            'sumLevel': true,
            'level': 2,
            'inteligence': '1',
            'sumInteligence': false
          },
          4: {
            'sumLevel': true,
            'level': 2,
            'inteligence': '1',
            'sumInteligence': false
          },
        },
        onCardDone: updateList,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeCard = 0.70 * sizeW;

    return DefaultScaffoldWidget(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              cardList.isEmpty
                  ? 'Não há perguntas aqui'
                  : cardList.last.question,
              style: const TextStyle(fontSize: 24),
            ),
            cardList.isEmpty
                ? const Text('Você deve voltar para casa.')
                : Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: sizeCard,
                        height: sizeCard,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: const Color(0xFF1E3640),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.50),
                                blurRadius: 4,
                                offset: const Offset(0, 4))
                          ],
                        ),
                      ),
                      cardList.last,
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
