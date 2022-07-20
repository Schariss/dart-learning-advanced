import 'dart:async';

int count = 0;

void main(List<String> args){

  Duration d = new Duration(seconds: 2);
  Timer t = new Timer.periodic(d, timeout);
  print('started : ${getTime()}\n----------------------------\n');

}

void timeout(Timer t){
  print('time out : ${getTime()}');
  count++;
  if(count > 5) t.cancel();
}

String getTime(){
  DateTime t = new DateTime.now();
  return t.toString();
}