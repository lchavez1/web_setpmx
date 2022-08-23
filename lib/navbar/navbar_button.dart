import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/gradient_text.dart';
import '../utils/styles.dart';


class NavBarButton extends HookConsumerWidget{

  VoidCallback onTap;
  String text;
  NavBarButton(this.onTap, this.text);

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {

    final textColor = useState<Color>(Colors.white);
    final textButton = useState<Widget>(Text(text, style: TextStyle(
      fontFamily: 'agency',
      fontSize: 30,
      color: textColor.value,
    )));

    return MouseRegion(
      onEnter: (value){
        textButton.value = GradientText(
          text,
          gradient: gradientYellow,
          style: TextStyle(
            fontFamily: 'agency',
            fontSize: 30,
            color: textColor.value,
          ),
        );
      },
      onExit: (value){
        textButton.value = Text(text, style: TextStyle(
          fontFamily: 'agency',
          fontSize: 30,
          color: textColor.value,
        ));
      },

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: textButton.value,
            /*Text(text, style: TextStyle(
              fontFamily: 'agency',
              fontSize: 30,
              color: textColor.value,
            ),),*/
          ),
        ),
      ),
    );
  }
}