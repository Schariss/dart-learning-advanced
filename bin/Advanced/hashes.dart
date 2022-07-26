import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> args){

  Digest digest = new Digest("SHA-256");

  String value = "Hello  World!";
  Uint8List data = new Uint8List.fromList(utf8.encode(value));
  Uint8List hash = digest.process(data);
  print(hash);
  print(base64.encode(hash));
  print(digest.algorithmName);
}