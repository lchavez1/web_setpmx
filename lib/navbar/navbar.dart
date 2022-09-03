import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


import '../utils/responsive_widget.dart';
import '../webpage.dart';
import 'navbar_button.dart';

const urlLogo = 'assets/images/StepMx Logo Blanco.png';

class NavBar extends ResponsiveWidget{

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileNavBar();
  }
}

class DesktopNavBar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {

    final isScrolled = widgetRef.watch(scrolledProvider);
    final navBarColor = isScrolled ? Colors.blueAccent : Colors.transparent;

    return Container(
      height: 200,
      color: navBarColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Expanded(child: Container()),
            Image.asset(urlLogo, height: 100,),
            Expanded(child: Container()),
            Row(
              children: [
                NavBarButton(() { }, 'Nosotros'),
                SizedBox(width: 40,),
                NavBarButton(() { }, 'Servicios'),
                SizedBox(width: 40,),
                NavBarButton(() { }, 'Clientes'),
                SizedBox(width: 40,),
                NavBarButton(() { }, 'Contacto'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {

    final containerHeight = useState<double>(0.0);

    final isScrolled = widgetRef.watch(scrolledProvider);
    final navBarColor = isScrolled ? Colors.blueAccent : Colors.transparent;

    return Container(
      color: navBarColor,
      child: Center(
          child: Image.asset(urlLogo, height: 100,)
      ),
    );
  }
}