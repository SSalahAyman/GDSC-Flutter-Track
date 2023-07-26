import 'package:flutter/material.dart';

class DividerHeader extends StatelessWidget {
  DividerHeader({super.key});
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(32),
      ),
      margin: const EdgeInsets.only(top: 16, bottom: 32),
      width: width * 0.4,
      height: 6,
    );
  }
}
