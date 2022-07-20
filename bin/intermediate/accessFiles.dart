import 'dart:io';

main(List<String> arguments) {

  Directory dir = Directory.current;
  print(dir.path);

  File file = new File(dir.path + '/myfile.txt');

  writeFile(file);
  readFile(file);

//Assignment
//  Directory dir = Directory.current;
//  File file = new File(dir.path + '/myfile.txt');
//
//  file.writeAsStringSync('Hello World');
//  print(file.readAsStringSync());
//
//  file.deleteSync();

}

void writeFile(File file) {
  //Append, Write

  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync('Hello World!\r\nHow are you today?');
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file) {

  if(!file.existsSync()) {
    print('file not found!');
    return;
  }

  print('Reading string...');
  print(file.readAsStringSync());

  print('Reading bytes....');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));

}