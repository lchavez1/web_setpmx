import 'package:flutter/material.dart';

import 'hex_color.dart';


//Styles

//Gradiente en textos
LinearGradient gradient = LinearGradient(
    colors: [
        HexColor.fromHex('#f4c01c'),
        HexColor.fromHex('#d5a13b'),
        HexColor.fromHex('#f07f22'),
        HexColor.fromHex('#ec6b06'),
        HexColor.fromHex('#e41b19'),
    ]
);

LinearGradient gradientYellow = LinearGradient(
    colors: [
      Colors.yellow.shade50,
      Colors.yellow.shade100,
      Colors.yellow.shade200,
      Colors.yellow.shade300,
      Colors.yellow.shade300,
      Colors.yellow
    ]
);

//Textos de la pagina desktop
const TextStyle styleTitleIcon = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 80,
    color: Colors.red,
    fontFamily: 'barlow');

const TextStyle styleTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 80,
    color: Colors.white,
    fontFamily: 'barlow');

const TextStyle styleTextPage =
    TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'barlow');

const TextStyle styleTextTitleNosotros = TextStyle(
    color: Colors.red, fontSize: 60, fontFamily: 'barlow');

//Textos de la pagina mobile
const TextStyle styleTitleIconMobile = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: Colors.red,
    fontFamily: 'barlow');

const TextStyle styleTitleMobile = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: Colors.white,
    fontFamily: 'barlow');

const TextStyle styleTextPageMobile =
TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'barlow');

const TextStyle styleTitleNosotrosMobile = TextStyle(
    color: Colors.red, fontSize: 30, fontFamily: 'barlow');
