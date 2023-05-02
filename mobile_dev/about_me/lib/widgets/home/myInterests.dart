import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../models/Interests.dart';

class MyInterests extends StatefulWidget {
  const MyInterests({super.key});

  @override
  State<MyInterests> createState() => _MyInterestsState();
}

class _MyInterestsState extends State<MyInterests> {
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
              ...(_foundInterests.length > 0 ? _foundInterests : interests)
                  .map(
                    (interest) => Container(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      decoration: BoxDecoration(
                        color: lightColor,
                        borderRadius: BorderRadius.circular(10),
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
      ],
    ));
  }
}
