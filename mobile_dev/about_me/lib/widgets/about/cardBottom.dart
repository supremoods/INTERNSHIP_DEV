import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../widgets/about/techStacks.dart';


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
                    height: 400,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // add Text

                            Container(
                              padding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: Text(
                                'I am a 4th year Information Technology student at the Technological University of the Philippines. I am currently working as a Full Stack Web Developer Intern at Centralized Cloud Computing International.',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: gray_300),
                              ),
                            ),
                            SizedBox(height: 25),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 30,
                                        right: 30,
                                      ),
                                      child: Text(
                                        'Technology Stacks',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: gray_400),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    // add grid view in 2 columns showing the tech stacks just image only
                                    // use the list of tech stacks
                                    TechStacksView()
                                  ]),
                            )
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
