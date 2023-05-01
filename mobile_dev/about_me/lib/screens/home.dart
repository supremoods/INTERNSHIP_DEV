
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
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        // set container to
        Positioned(
          bottom: 0,
          height: MediaQuery.of(context).size.height * 0.50,
          width: MediaQuery.of(context).size.width,
          child: CardBottom(),
        ),
        Positioned(
          top: 10,
          left: 30,
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
