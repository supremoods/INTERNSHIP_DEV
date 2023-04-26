import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: primaryColor,
          padding: EdgeInsets.only(top: 100, left: 30, right: 30),
          // add header text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Tracker',
                style: TextStyle(
                  color: lightColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: darkPrimaryColor,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: darkPrimaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ], // children
                ),
              ),
            ], // children
            )
    );
  }
}
