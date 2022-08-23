import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web_stepmx/footer/footer.dart';
import 'package:web_stepmx/navbar/navbar.dart';
import 'package:web_stepmx/pages/about.dart';
import 'package:web_stepmx/pages/contact.dart';
import 'package:web_stepmx/pages/customers.dart';
import 'package:web_stepmx/pages/home.dart';
import 'package:web_stepmx/pages/services.dart';

final inicio = GlobalKey();
final nosotros = GlobalKey();
final servicios = GlobalKey();
final clientes = GlobalKey();
final contacto = GlobalKey();

final scrolledProvider = StateProvider<bool>((key) => false);
final currentPageProvider = StateProvider<GlobalKey>((ref) => inicio);

class WebPage extends HookConsumerWidget {

  void onScroll(ScrollController controller, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    if (controller.position.pixels > 5 && !isScrolled) {
      ref.watch(scrolledProvider.notifier).state = true;
    } else if (controller.position.pixels <= 5 && isScrolled) {
      ref.watch(scrolledProvider.notifier).state = false;
    }
  }

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {

    final _controller = useScrollController();

    useEffect((){
      _controller.addListener(() => onScroll(_controller, widgetRef));
      return _controller.dispose;
    }, [_controller]);

    widgetRef.watch(currentPageProvider.state).addListener(scrollTo, fireImmediately: false);

    return Scaffold(
        body: Stack(children: [
      Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false, // hides leading widget
              flexibleSpace: NavBar(),
              elevation: 0.0,
            )
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Home(
                  key: inicio,
                ),
                /*About(
                  key: nosotros,
                ),
                Services(
                  key: servicios,
                ),
                Customers(
                  key: clientes,
                ),
                Contact(
                  key: contacto,
                ),*/
                Footer(),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
