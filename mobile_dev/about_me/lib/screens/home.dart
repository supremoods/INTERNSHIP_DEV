import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // gradient background
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/profile.jpg'),
              alignment: Alignment.topCenter,
            )
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: Transform.rotate(
                  angle: 1.5708,
                  child: IconButton(
                    
                    icon: Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                      
                      ),
                    onPressed: () {},
                  ),
                )
              ),
              Container(
                // add background image
                padding: EdgeInsets.only(left: 20),
                // widtg
                width: double.infinity,
                child: Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                // set height
                height: 250,
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)
                        )
                      ),
                    padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, I\'m',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: darkColor
                          ),
                        ),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: primaryColor
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            'I\'m a Flutter Developer. I\'m currently working at a startup company in Jakarta, Indonesia. I\'m also a student at a university in Jakarta, Indonesia.',
                            style: TextStyle(
                              fontSize: 15,
                              color: darkColor
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            'Skills',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: darkColor
                            ),
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
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text(
                                  'Flutter',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: darkColor
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: lightColor,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text(
                                  'Dart',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: darkColor
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: lightColor,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text(
                                  'Java',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: darkColor
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ], 
                    ),
                  ),
                ),
            ],
          )
        ),
      ),

    );
  }
}