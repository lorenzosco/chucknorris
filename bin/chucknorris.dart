import 'dart:io';

import 'package:chucknorris/chucknorris.dart' as chucknorris;
import 'package:dotenv/dotenv.dart';
import 'package:chucknorris/services/category_services.dart';

void main(List<String> arguments) async {
  final env = DotEnv()..load();
  final cats = await getCategories();

  for (var i = 0; i < cats.length;) {
    print("$i - ${cats[i]}");
  }
  //final catindex = stdin.readLineSync();
  //prendimi l'indice della categoria inserita dall'utente
  //final cat = cats[int.parse(catindex!)];

  final input = stdin.readLineSync();
  print(input);
  final data = await chucknorris.getChuckNorrisAsync(env['category']!);
  print(data);
}
