import 'dart:convert';

void main(List<String> arguments){

  String str = "Hello world !";
  List ebytes = utf8.encode(str);
  print(ebytes);
  print(str.length);
  print(ebytes.length);
  String d = base64.encode(ebytes);
  print(d);
  //print(utf8.decode(ebytes));
  List dbytes = base64.decode(d);
  print(utf8.decode(dbytes));


}
