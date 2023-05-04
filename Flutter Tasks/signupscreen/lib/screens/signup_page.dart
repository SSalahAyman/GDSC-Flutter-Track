import 'package:flutter/material.dart';
import 'package:signupscreen/signup_page_components/email_text_field.dart';
import 'package:signupscreen/signup_page_components/have_account.dart';
import 'package:signupscreen/signup_page_components/page_header.dart';
import 'package:signupscreen/signup_page_components/password_text_field.dart';
import 'package:signupscreen/signup_page_components/phone_number_text_field.dart';
import 'package:signupscreen/signup_page_components/sign_up_button.dart';
import 'package:signupscreen/signup_page_components/user_name_text_field.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  static late double width;
  static late double height;

  GlobalKey<FormState> _formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formstate,
          child: Container(
            width: width,
            height: height,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),

                  /*
                  Page Header that contains >>> Signup image
                  */
                  PageHeader(),
                  SizedBox(
                    height: height * 0.02,
                  ),

                  /*
                  UserName textfield
                  */
                  UserNameTF(),

                  /*
                  Email textfield
                  */
                  EmailTF(),

                  /*
                  Password textfield
                  */
                  PasswordTF(),

                  /*
                  mobile number textfield
                  */
                  MobileNumberTF(),

                  /*
                  AlreadyHaveAnAccount header
                  */
                  AlreadyHaveAnAccount(),

                  /*
                  signup button
                  */
                  SignUpButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
