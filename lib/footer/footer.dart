import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook_outlined),
                Icon(Icons.tiktok_outlined),
                Icon(Icons.whatsapp)
              ],
            ),
            AutoSizeText('Todos los derechos reservados StepMx 2022.', style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

}