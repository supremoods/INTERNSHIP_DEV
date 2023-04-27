import 'package:flutter/material.dart';
import '../constants/colors.dart';

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
            leading: Transform.rotate(
              angle: 1.5708,
              child: GestureDetector(
                onTap: () {
                  setState(() {
     
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: darkColor.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: lightColor,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Icon(
                    Icons.bar_chart,
                    color: primaryColor,
                  ),
                ),
              ),
            )
          )
        ],
      )
    );  
  }
}