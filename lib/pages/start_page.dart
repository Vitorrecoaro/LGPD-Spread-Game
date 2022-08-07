import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  StartPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;

    validateName() {
      if (nameController.value.text != '') {
        Navigator.pushReplacementNamed(context, '/questionPage');
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Boas vindas, vossa excelência!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Material(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SvgPicture.asset(
                            'lib/assets/UI/VectorMapButton.svg'),
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
          ],
        ),
      ),
    );
  }
}
