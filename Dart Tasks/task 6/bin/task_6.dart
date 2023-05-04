import 'dart:io';

void main(){
  double result=sum(1,2);
  print(result);
  double result1=Mul(1,2);
  print(result1);
  double result2=Sub(2,1);
  print(result2);
}

double sum(double num1,double num2){
  double result=num1+num2;
  return result;
}

double Mul(double num1,double num2){
  double result=num1*num2;
  return result;
}
double Sub(double num1,double num2){
  double result=num1-num2;
  return result;
}

