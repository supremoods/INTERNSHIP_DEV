import 'package:about_me/screens/about.dart';
import 'package:about_me/screens/home.dart';
import 'package:about_me/screens/projects.dart';
import 'package:about_me/screens/internship.dart';
import 'package:flutter/material.dart';
import 'package:boxicons/boxicons.dart';

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
                Boxicons.bx_arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // add navigation menu for about, projects, internship and others
          // add also onpressed to navigate to other page
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigation code goes here
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigation code goes here
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigation code goes here
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Projects()));
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Text(
                    'Internship',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigation code goes here
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Text(
                    'Others',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigation code goes here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
