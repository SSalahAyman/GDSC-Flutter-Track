import 'package:flutter/material.dart';
import 'package:todo_app/components/bottom_sheet_view.dart';

class FloatingActionButtonHomePage extends StatelessWidget {
  FloatingActionButtonHomePage({super.key});
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.38),
      child: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add, size: width * 0.1),
        onPressed: () {
          BottomSheetView(context);
        },
      ),
    );
  }
}
