import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:boxicons/boxicons.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({super.key});

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}
class _HeaderBarState extends State<HeaderBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
                onTap: () {
                  setState(() {
     
                  });
                },
                child: Container(
                  child: Icon(
                    Boxicons.bx_menu_alt_left,
                    color: gray_400,
                    size: 57,
                  ),
                ),
              ),
          )
        ],
      )
    );  
  }
}