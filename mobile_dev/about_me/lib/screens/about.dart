import 'package:about_me/constants/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/Sidebar.dart';
import '../widgets/about/cardBottom.dart';
import '../widgets/headerBar.dart';
import 'package:boxicons/boxicons.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool isCollapsed = false;
  // set height value for cardBottom
  double cardBottomHeight = 0.85;
  double profileHeight = 1;
  double arrowHeight = 0.0;
  bool isArrowUp = false;

  void _onSidebarChanged(bool value) {
    setState(() {
      isCollapsed = value;
    });

    print(isCollapsed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: MediaQuery.of(context).size.height,
            child: Align(
              alignment: Alignment.topCenter,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * profileHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aboutProfile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom: -MediaQuery.of(context).size.height * cardBottomHeight,
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width,
            child: CardBottom(),
          ),
          // add up arrow from boxicons
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom: MediaQuery.of(context).size.height * arrowHeight,
            // make center
            right: 20,

            child: Container(
              // add up arrow from boxicons
              child: IconButton(
                // put condition for arrow up and down
                icon: isArrowUp
                    ? Icon(
                        Boxicons.bx_down_arrow,
                        color: Colors.white,
                        size: 30,
                      )
                    : Icon(
                        Boxicons.bx_up_arrow,
                        color: Colors.white,
                        size: 30,
                      ),

                onPressed: () {
                  setState(() {
                    // add condition for arrow up and down
                    if (isArrowUp) {
                      isArrowUp = false;
                      cardBottomHeight = 0.85;
                      profileHeight = 1;
                      arrowHeight = 0.06;
                    } else {
                      isArrowUp = true;
                      cardBottomHeight = 0.40;
                      profileHeight = 0.60;
                      arrowHeight = 0.04;
                    }
                  });
                },
              ),
            ),
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              top: 0,
              left: 0,
              child: Container(
                 decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [black, Colors.transparent],
                      // set opacity
                      stops: [0.0, 0.4],
                    ),
                  ),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                // add menu button
                child: HeaderBar(onSidebarChanged: _onSidebarChanged),
              )),
          // add animated position
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            top: 0,
            left: isCollapsed ? 0 : -0.60 * MediaQuery.of(context).size.width,
            child: Sidebar(
              onSidebarChanged: _onSidebarChanged,
            ),
          )
        ],
      ),
    );
  }
}
