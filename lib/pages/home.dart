import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_stepmx/utils/responsive_widget.dart';

const heroText = 'La era digital es aqui y ahora.\nAtrevete a ser parte del cambio.';

class Home extends ResponsiveWidget {

  const Home ({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return HomeDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return HomeMobile();
  }

}

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center, children: [
              Image.asset('assets/images/Gradiante Top.png'),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)
              ),
              height: MediaQuery.of(context).size.width/6,
              width: MediaQuery.of(context).size.width/3,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: AutoSizeText(heroText,
                  style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center,),
                ),
              ),
            ),
          ]
          ),
          SizedBox(height: 30,),
          AutoSizeText('Nuestros clientes: ', style: TextStyle(fontSize: 30),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/ClienteBrrb.png', width: MediaQuery.of(context).size.width/4,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/Cliente Cimadde.png', width: MediaQuery.of(context).size.width/4,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/Cliente Cai.png', width: MediaQuery.of(context).size.width/4,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
              alignment: Alignment.center, children: [
            Image.asset('assets/images/Gradiante Top.png'),
          ]
          ),
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.width/6,
            width: MediaQuery.of(context).size.width/3,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: AutoSizeText(heroText,
                  style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText('Nuestros clientes: '),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/ClienteBrrb.png', width: MediaQuery.of(context).size.width/2,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/Cliente Cimadde.png', width: MediaQuery.of(context).size.width/2,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/Cliente Cai.png', width: MediaQuery.of(context).size.width/2,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}