import "dart:convert";
import "package:http/http.dart" as http;
import "package:chucknorris/models/chucknorris.dart";

const category = "animal";
const sito = "https://api.chucknorris.io/jokes/random?category=$category";

Future<ChuckNorris> getChuckNorrisAsync(String category) async {
  //con l'async dico che questo metodo è asincrono le cose succedono una dietro l'altra
  final url = Uri.parse(
      sito); //Crea un nuovo oggetto Uri analizzando una stringa che viene dal metodo URI
  final res = await http.get(
      url); //farà una request di quel URL atraverso il metodo GET //await serve per fare aspettare la get fino a  che non ti risponde
  final Map<String, dynamic> data = json.decode(res.body);
  ChuckNorris chuckNorris = ChuckNorris(
      value: data["value"], id: data["id"], createdAt: data["created_at"]);
  return chuckNorris;
}
