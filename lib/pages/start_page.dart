import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lgpd_spread_game/getX/game_controller.dart';

class StartPage extends StatelessWidget {
  StartPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();

  final GameController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;

    validateName() {
      if (nameController.value.text != '') {
        controller.setUser(nameController.text);
        Navigator.pushReplacementNamed(context, '/tutorialPage');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text(
            'Por obséquio, digite um nome para começarmos.',
            style: TextStyle(fontFamily: 'Bellefair', fontSize: 18),
          ),
          backgroundColor: Colors.grey.shade800,
          duration: const Duration(seconds: 2),
        ));
      }
    }

    submitTextField(String? name) {
      validateName();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'lib/assets/UI/LGPD_Spread_Game-Logo.svg',
            width: sizeW * 0.75,
            fit: BoxFit.fitHeight,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              'Boas vindas, vossa excelência!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              elevation: 4,
              child: TextField(
                onSubmitted: submitTextField,
                controller: nameController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Digite vosso nome aqui',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: sizeW * 0.50,
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(4),
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.surface)),
                onPressed: validateName,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
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
                      const Spacer(),
                      Flexible(
                        flex: 5,
                        child: Text(
                          'Novo jogo',
                          style: TextStyle(
                              fontSize: 18,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
