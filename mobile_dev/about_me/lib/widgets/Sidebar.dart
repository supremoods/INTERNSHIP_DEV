import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Sidebar extends StatelessWidget {
  final ValueChanged<bool> onSidebarChanged;

  const Sidebar({required this.onSidebarChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .60,
      height: MediaQuery.of(context).size.height,
      // set bg image
      decoration: BoxDecoration(
        // add radius to sidebar bg image
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        // add shadow to sidebar bg image
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
        image: DecorationImage(
          
          image: AssetImage('assets/images/profile.jpg'),
          fit: BoxFit.cover,
          // add filter to bg image make it darker and blur
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.8),
            BlendMode.darken,
          ),
          
          
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          // add icon from boxicons arrow back
          Padding(
            // add button to icon using boxicons
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () {
                onSidebarChanged(false);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            
          ),
          SizedBox(
            height: 30,
          ),

                 ],
      ),
    );
  }
}