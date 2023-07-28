import 'package:flutter/material.dart';
import 'package:todo_app/components/floating_action_button.dart';
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
        backgroundColor: const Color(0xffFF8551),
        /**
           ** Floating action button (plus button)
           */
        floatingActionButton: FloatingActionButtonHomePage(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /**
               * customAppBar
               */
              CustomAppBar(),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                width: width * 0.9,
                height: height * 0.76,
                child: NotesViewBody(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
