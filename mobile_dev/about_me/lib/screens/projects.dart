import 'package:flutter/material.dart';
import '../widgets/headerBar.dart';
import '../widgets/Sidebar.dart';
import '../widgets/home/cardBottom.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  // add state from sidebar
  bool isCollapsed = false;

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
        Container(
          height: MediaQuery.of(context).size.height,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.80,
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
          child: HeaderBar( onSidebarChanged: _onSidebarChanged),
          )
        ),
        // add animated position
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          top: 0,
          left: isCollapsed ? 0 : -0.60 * MediaQuery.of(context).size.width,
          child: Sidebar(
            onSidebarChanged: _onSidebarChanged,
          ),
        ),
      ],
    ));
  
  }
}