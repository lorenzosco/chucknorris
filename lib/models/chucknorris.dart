//https://api.chucknorris.io/
class ChuckNorris {
  String value;
  String id;
  String createdAt;

  ChuckNorris({required this.value, required this.id, required this.createdAt});

  @override
  String toString() {
    return "l'id:$id, data creazione:$createdAt,la barzeletta:$value";
  }
}
//factory sono metodi che aiutano a non ripetere troppe volte il codice 
//iterable è un oggetto che definisce il fatto che puoi scorrere gli elementi della sua lista, ma quando viene creato non ha nulla,
//quando gli dico di prendere dalla lista un dato con uno specifico id, non mi dare tutti gli altri elementi che non mi interessano 