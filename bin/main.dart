import 'dart:io';
import 'dart:async';

enum colors {
  red,
  green,
  yellow
}

void main(List<String> arguments) {
  //print('Hello world !');
  //print(arguments);

  /*bool isOn = true;
  var variable = 0;
  num number = 4;

  print(isOn);
  print('isOn is a ${isOn.runtimeType}');
  print('variable is a ${variable.runtimeType}');
  print('number is a ${number.runtimeType}');

  //if it didnt work assign null to parsed
  int parsed = int.parse("12.4", onError: (source) => null);
  print("parsed = ${parsed}");

  String name = "Chahid Adnane";
  List fullname = name.split(" ");
  print(fullname);
  String upName = name.toUpperCase();
  print(upName);*/

  /*stdout.write("What is your name ?\n");
  String name = stdin.readLineSync();
  name.isEmpty ? stderr.write("Name is empty") : print("Hello, ${name}");
  print(name.length);*/

//  print(colors.values);

//List things = new List();
//things.add("X");
//things.add(11);
//things.add(true);
//print(things);

//Map people = {'dad' : 'Bryan', 'son' : 'Chris', 'daughter' : 'Heather'};

//  Map<String, String> people = new Map<String, String>();
//  people.putIfAbsent('dad', () => 'Bryan');
//  //people.putIfAbsent('son', () => 'Bryan');
//  //people.putIfAbsent('daughter', () => 'Bryan');
//
//  print(people);
//  print('Keys are ${people.keys}');
//  print('Values are ${people.values}');
//  print('Dad is ${people['dad']}');
//  print('Son is ${people['son']}');


//  sayHello();
//
//  download('myfile.txt');
//  download('myfile2.txt',true);


//  int footage = squartFeet(length: 10, width: 5);
//  print('Footage is ${footage}');
//  download('myfile');
//  download('myfile2', port: 90);


//  displayResult(askUser());


  try {
    int age;
    int dogyears = 7;

    print(age * dogyears);
  }
  on NoSuchMethodError {
    print('Sorry thats not going to happen');
  }
  catch (e) {
    print('There was an error: ${e.toString()}');
  }
  finally {
    print('complete');
  }


  try {
    int age = askAge();
    if(age < 18) throw new Exception('too young');
    if(age > 99) throw new Exception('too old');

    print('You may continue');

  } catch (e) {
    print('Error: ${e.toString()}');
  }
  finally {
    print('good bye');
  }

}

//void sayHello([String name = '']) {
//  if(name.isNotEmpty) name = name.padLeft(name.length + 1);
//  print('Hello$ {name}');
//}
//
//void download(String file, [bool open = false]) {
//  print('Downloading ${file}');
//  if(open) print('Opening ${file}');
//}

//int squartFeet({int width, int length}) {
//  return width * length;
//}
//
//void download(String file, {int port: 80}) {
//  print('Download ${file} on port ${port}');
//}


//int askUser() {
//  print('Please enter a number');
//  return int.parse(stdin.readLineSync(), onError: (String err) {
//    print('Error entering a number ${err}');
//    return 0;
//  });
//}
//
//void displayResult(int max) {
//  double half = max / 2;
//
//  for(int i = 1; i < max + 1; i++) {
//    print(i);
//    if(i == half.round()) print('Half way there');
//  }
//}

int askAge() {
  print('Enter an age');
  return int.parse(stdin.readLineSync(), onError: (String err) {
    print('Not a number');
    return 0;
  });
}
