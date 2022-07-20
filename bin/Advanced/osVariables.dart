import 'dart:io';

void main(List<String> args){

  print('Operating system : ${Platform.operatingSystem}');
  print('OS version : ${Platform.operatingSystemVersion}');
  print('Platform version : ${Platform.version}');

  if(Platform.isMacOS){
    print('Runnnig on Mac');
  }else {
    print('Runnig on other OS');
  }

  print('------------------------\nEnvironment variables : ');
  Platform.environment.forEach((key, value) {
    print('${key} : ${value}');
  });

  print('\n----------------------');
  print('Path : ${Platform.script.path}');
  print('dart : ${Platform.executable}');
}