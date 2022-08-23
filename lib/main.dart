import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:web_stepmx/webpage.dart';

void main(){
  setPathUrlStrategy();
  runApp(
      ProviderScope(
          child: MaterialApp(
            title: 'STEP MX',
            debugShowCheckedModeBanner: false,
            home: WebPage(),
          )
      )
  );
}

