import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/Interests.dart';

class CardBottom extends StatefulWidget {
  const CardBottom({super.key});

  @override
  State<CardBottom> createState() => _CardBottomState();
}

class _CardBottomState extends State<CardBottom> {
  final interests = Interests.interests();
  List<Interests> _foundInterests = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: black_100,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Lappay, 21',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: gray_500),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Freelance Developer',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: gray_200),
                          ),
                        ]),
                  ),
                  // add gap
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'My Interests',
                      style: TextStyle(
                          fontSize: 24,
                          color: gray_300,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child:
                        // make it flex wrap
                        Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: lightColor,
                              borderRadius: BorderRadius.circular(10)),
                            // loop through the interests


                        ),
                      ],
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Skills',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: darkColor),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Flutter',
                    style: TextStyle(fontSize: 15, color: darkColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Dart',
                    style: TextStyle(fontSize: 15, color: darkColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Java',
                    style: TextStyle(fontSize: 15, color: lightColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
