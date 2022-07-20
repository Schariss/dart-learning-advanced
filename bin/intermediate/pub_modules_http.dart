import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

void main(List<String> arguments){

//  String url = "https://www.google.com/";
//  http.get(url).then((value){
//    print("Response status : ${value.statusCode}");
//    print("----------------------");
//    print("Response body : \n");
//    print(value.body);
//  });

  //Exercice 1
  String path = p.join('directory', 'fich.txt');
  print(path);
}