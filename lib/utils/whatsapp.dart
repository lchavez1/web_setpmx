import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchWhatsApp(String number, String message) async {
  String url = "whatsapp://send?phone=$number&text=$message";
  String apiWhatsapp = 'https://api.whatsapp.com/send?phone=$number&text=$message';
  await canLaunch(url) ? launch(url) : launch(apiWhatsapp);
}

FloatingActionButton floatingActionButtonWhatsApp(){
  return FloatingActionButton(
      child: Image.asset('assets/icons/whatsapp.png'),
      backgroundColor: Colors.white,
      onPressed: () => launchWhatsApp('+524291170436', 'Escribenos tu mensaje aqui ...')
  );
}