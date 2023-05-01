import 'dart:io';

void main(){
  print("please enter your first name :");
  String firstname=stdin.readLineSync()!;
  print("please enter your last name :s");
  String lastname=stdin.readLineSync()!;
  print("my firstname is $firstname , my lastname is $lastname");
}