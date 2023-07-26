import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/components/home_page_components/custom_app_bar.dart';
import 'package:todo_app/components/home_page_components/notes_view_body.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        /**
         * Floating action button (plus button)
         */
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: height * 0.02),
          child: FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {
              // action when button clicked //
            },
            child: Icon(Icons.add, size: width * 0.1),
          ),
        ),
        backgroundColor: const Color(0xffFF8551),
        body: Column(
          children: [
            /**
             * customAppBar
             */
            CustomAppBar(),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              width: width * 0.9,
              height: height * 0.75,
              child: NotesViewBody(),
            )
          ],
        ),
      ),
    );
  }
}
