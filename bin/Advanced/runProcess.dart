import 'dart:io';

void main(List<String> args){

  Process.run("ls", []).then((value) {
    print(value.stdout);
    print('Exit code : ${value.exitCode}');
  });
}