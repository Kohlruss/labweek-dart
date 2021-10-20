import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;
import 'matches.dart';

UListElement? matchdayList;

void main() {
  matchdayList = querySelector('#matchday') as UListElement;
  Future<Matches> response = getMatches();
  response.then((value) =>
    value.matches.forEach((match) {
      var game = LIElement();
      var textInfo = SpanElement();
      var team1Icon = ImageElement(src: match.team1.teamIconUrl, width: 20, height: 20);
      game.children.add(team1Icon);
      textInfo.text = match.toString();
      game.children.add(textInfo);
      var team2Icon = ImageElement(src: match.team2.teamIconUrl, width: 20, height: 20);
      game.children.add(team2Icon);
      matchdayList!.children.add(game);
    })
  );
}

Future<Matches> getMatches() async {
  final response = await http.get(Uri.parse("https://api.openligadb.de/getmatchdata/bl2/2021/8"));
  if(response.statusCode == 202) {
    var jsonDecoded = jsonDecode(response.body);
    return Matches.fromJson(jsonDecoded);
  } else {
    throw Exception("Error while loading or parsing data");
  }
}
