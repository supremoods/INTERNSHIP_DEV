import 'package:flutter/material.dart';
import '../../models/TechStacks.dart';

class TechStacksView extends StatefulWidget {
  const TechStacksView({super.key});

  @override
  State<TechStacksView> createState() => _TechStacksViewState();
}

class _TechStacksViewState extends State<TechStacksView> {
  final techStacks = TechStacks.techStacks();
  List<TechStacks> _foundTechStacks = [];

  @override
  void initState() {
    _foundTechStacks = techStacks;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _foundTechStacks.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Image.asset(
              _foundTechStacks[index].image,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
