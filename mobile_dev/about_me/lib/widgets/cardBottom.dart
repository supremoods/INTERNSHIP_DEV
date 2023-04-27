import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:dio/dio.dart';

class CardBottom extends StatefulWidget {
  const CardBottom({super.key});

  @override
  State<CardBottom> createState() => _CardBottomState();
}

class _CardBottomState extends State<CardBottom> {
  List<dynamic> _notifications = [];

  final Dio _dio = Dio();

  Future<void> _fetchNotifications() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        setState(() {
          _notifications = response.data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: lightColor,
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'John Lappay',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: primaryColor),
                          ),
                          // add notification button
                          GestureDetector(
                            onTap: () async {
                              await _fetchNotifications();

                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Notifications'),
                                    content: Container(
                                      width: double.maxFinite,
                                      child: ListView.builder(
                                        itemCount: _notifications.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ListTile(
                                            leading: Icon(
                                                Icons.notification_important),
                                            title: Text(
                                                _notifications[index]['title']),
                                          );
                                        },
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text('Close'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: darkColor.withOpacity(0.6),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                                color: lightColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.notifications,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  // add gap
                  SizedBox(height: 10),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: darkColor.withOpacity(0.7)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'I am a fourth-year Information Technology student at the Technological University of the Philippines, and I am currently working as a Software Developer Intern at Centralized Cloud Computing International.',
                      style: TextStyle(fontSize: 15, color: darkColor),
                    ),
                  ),
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
