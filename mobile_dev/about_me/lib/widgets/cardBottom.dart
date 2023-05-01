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
  void initState() {
    _foundInterests = interests;
    super.initState();
  }

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
                            Container(
                              padding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: Text(
                                'My Interests',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: gray_300,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child:
                                  // make it flex wrap
                                  Wrap(
                                children: [
                                  ...(_foundInterests.length > 0
                                          ? _foundInterests
                                          : interests)
                                      .map(
                                        (interest) => Container(
                                          margin: EdgeInsets.only(
                                              top: 10, right: 10),
                                          padding: EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              left: 15,
                                              right: 15),
                                          decoration: BoxDecoration(
                                            color: lightColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            interest.name,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: darkColor,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ],
                              ),
                            ),
                            // add gap
                            SizedBox(height: 25),
                            Container(
                                // list view cards horizontal
                                padding: EdgeInsets.only(
                                  left: 30,
                                ),
                                height: 250,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 10,
                                          right: 10,
                                        ),
                                        
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: black_100,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 20, right: 20,
                                                  top: 20,
                                              ),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        'About',
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
                                                          left: 20, right: 20,
                                                  top: 20,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/about.png'),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                             Container(
                                              padding: EdgeInsets.only(
                                                  left: 20, right: 20,
                                                  top: 20,
                                              ),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        'Projects',
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
                                                  left: 20, right: 20,
                                                  top: 20,
                                              ),
                                              decoration: BoxDecoration(
                                                
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/projects.png'),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                             Container(
                                              padding: EdgeInsets.only(
                                                  left: 20, right: 20,
                                                  top: 20,
                                              ),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        'Internship',
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
                                                  left: 20, right: 20,
                                                  top: 20,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/internship.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])),
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
