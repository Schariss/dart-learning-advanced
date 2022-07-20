import 'dart:io';
import 'dart:convert';

void main(List<String> args){
  
  Process.start("cat", []).then((process){
    process.stdout.transform(utf8.decoder).listen((data) { print(data);});

    process.stdin.writeln("Hello World!");
    Process.killPid(process.pid);

    //process.exitCode.then((code) => print('Exit code : $code'));

  });
}