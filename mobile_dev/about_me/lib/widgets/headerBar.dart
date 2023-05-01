import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:boxicons/boxicons.dart';
import '../widgets/Sidebar.dart';

class HeaderBar extends StatefulWidget {
  final ValueChanged<bool> onSidebarChanged;

  const HeaderBar({required this.onSidebarChanged});  

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}
class _HeaderBarState extends State<HeaderBar> {
  // add state for sidebar
  
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
                    widget.onSidebarChanged(true);
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