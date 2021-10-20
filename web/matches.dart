import 'match.dart';

class Matches {
  final List<Match> matches;

  Matches({required this.matches});

  factory Matches.fromJson(List<dynamic> json) {
    return Matches(
        matches: (json).map((i) => Match.fromJson(i)).toList()
    );
  }
}
