
import 'package:flutter/material.dart';
import '../widgets/cardBottom.dart';
import '../widgets/headerBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [

        Container(
          height: MediaQuery.of(context).size.height,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  alignment: Alignment(0, 3.0),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        // set container to
        Positioned(
          bottom: 0,
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
          child: CardBottom(),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Container(
            width: MediaQuery.of(context).size.width,
          // add menu button
          child: HeaderBar(),
          )
        ),
      ],
    ));
  }
}
