import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultScaffoldWidget extends StatefulWidget {
  final Widget body;
  const DefaultScaffoldWidget({Key? key, required this.body}) : super(key: key);

  @override
  State<DefaultScaffoldWidget> createState() => _DefaultScaffoldWidgetState();
}

class _DefaultScaffoldWidgetState extends State<DefaultScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: sizeH * 0.10,
        width: sizeH * 0.10,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          onPressed: () {},
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
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: widget.body,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: sizeH * 0.075,
            ),
            // Expanded(
            //   flex: 2,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 10, bottom: 10),
            //     child: Icon(
            //       Icons.person,
            //       size: sizeH * 0.05,
            //     ),
            //   ),
            // ),
            // const Spacer(),
            // Expanded(
            //   flex: 2,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            //     child: Icon(
            //       Icons.settings,
            //       size: sizeH * 0.05,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
