import 'package:flutter/material.dart';
import 'package:lgpd_spread_game/components/default_scaffold_widget.dart';
import '../common/list_cards_class.dart';

class QuestionPage extends StatefulWidget {
  final ListCards list;
  const QuestionPage({Key? key, required this.list}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  void initState() {
    super.initState();
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
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text(
                widget.list.listOfCards.isEmpty
                    ? 'Não há ninguém por aqui'
                    : widget.list.cards.last.question,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            widget.list.cards.isEmpty
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
                      widget.list.cards.last,
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
