import 'dart:io';

void main(){
  print(areaofcircle(4));
  print(areaofrectangle(4, 4));
}

double areaofcircle (double radius){
  double pi=3.14;
  double result=radius*radius*pi;
  return result;
}
double areaofrectangle (double width,double height){
  double result=width*height;
  return result;
}