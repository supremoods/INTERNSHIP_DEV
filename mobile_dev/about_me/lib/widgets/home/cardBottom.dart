import 'package:about_me/widgets/home/myInterests.dart';
import 'package:about_me/widgets/home/navCards.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class CardBottom extends StatefulWidget {
  const CardBottom({super.key});

  @override
  State<CardBottom> createState() => _CardBottomState();
}

class _CardBottomState extends State<CardBottom> {

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
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
                          SizedBox(height: 5),
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
                  SizedBox(height: 25),
                  // make the container sc
                  Container(
                    // make the container scrollable vertical
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyInterests(),
                            SizedBox(height: 25),
                            NavCards()
                          ],
                        ),
                      ),
                    ),
                  ),
                
                ],
              )),
        ],
      ),
    );
  }
}
