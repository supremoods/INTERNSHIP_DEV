import 'package:about_me/screens/about.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class NavCards extends StatelessWidget {
  const NavCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // list view cards horizontal
        padding: EdgeInsets.only(
          left: 30,
        ),
        height: 250,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 10,
              ),
              width: 200,
              decoration: BoxDecoration(
                color: black_100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: gray_500,
                              )),
                        ]),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: darkColor.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/about.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 10,
            ),
            width: 200,
            decoration: BoxDecoration(
              color: black_100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Projects',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: gray_300,
                            )),
                      ]),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/projects.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 10,
            ),
            width: 200,
            decoration: BoxDecoration(
              color: black_100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Internship',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: gray_300,
                            )),
                      ]),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/internship.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
