import 'package:flutter/material.dart';
import 'package:web_stepmx/utils/responsive_widget.dart';

class Customers extends ResponsiveWidget {

  const Customers ({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return HomeDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return HomeDesktop();
  }

}

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
    );
  }
}