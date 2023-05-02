import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardBottom extends StatefulWidget {
  const CardBottom({super.key});

  @override
  State<CardBottom> createState() => _CardBottomState();
}

class _CardBottomState extends State<CardBottom> {
  // add list of projects
  List projects = [
    {
      'title': 'Dory\'s',
      'subTitle': 'Online Booking System',
      'image': 'assets/images/projects/dorys.png',
      'description': 'Online Booking System for Dory\'s Restaurant',
    },
    {
      'title': 'Abyss',
      'subTitle': 'Art Community Website',
      'image': 'assets/images/projects/abyss.png',
      'description': 'Art Community Website for Abyss Art Community',
    },
    {
      'title': 'EVS',
      'subTitle': 'E-Voting System',
      'image': 'assets/images/projects/evs.png',
      'description': 'E-Voting System for Student Council Election',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: black,
            boxShadow: [
              BoxShadow(
                color: darkColor.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.60,
            viewportFraction: 1,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
          items: projects.map((project) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        project['title'],
                        style: TextStyle(
                          color: gray_100,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        project['subTitle'],
                        style: TextStyle(
                          color: gray_100,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: MediaQuery.of(context).size.height * 0.30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(project['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        project['description'],
                        style: TextStyle(
                          color: gray_100,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        )
            );
  }
}
