import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_stepmx/utils/responsive_widget.dart';

const heroText = 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.';

final Uri cimadde = Uri.parse('http://cimadde.com.mx');
final Uri brrb = Uri.parse('https://flutter.dev');
final Uri cai = Uri.parse('https://servicioscai.com/');

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
              width: MediaQuery.of(context).size.width/2,
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
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(child: Image.asset('assets/images/ClienteBrrb.png', width: MediaQuery.of(context).size.width/4,), onTap: () => launchUrl(cimadde)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(child: Image.asset('assets/images/Cliente Cimadde.png', width: MediaQuery.of(context).size.width/4,), onTap: () => launchUrl(cimadde),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(child: Image.asset('assets/images/Cliente Cai.png', width: MediaQuery.of(context).size.width/4,), onTap: () => launchUrl(cai),),
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                  color: Colors.blue.withOpacity(1),
                  borderRadius: BorderRadius.circular(20)
              ),
              height: MediaQuery.of(context).size.width/3,
              width: MediaQuery.of(context).size.width*0.7,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: AutoSizeText(heroText,
                    style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center,),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
      ),
    );
  }
}