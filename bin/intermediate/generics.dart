
import 'dart:io';

void main(List<String> args){
  add(1, 4);
  addNumbers(6, 4);

}

void add<T>(T a, T b){
  print("a : ${a}, and b : ${b}");
}

void addNumbers<T extends num>(T a, T b){
  print("a : ${a}, and b : ${b}, RESULT : ${a + b}");
}