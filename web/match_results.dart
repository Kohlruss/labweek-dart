import 'match_result.dart';

class MatchResults {
  final List<MatchResult> matchResults;

  MatchResults({required this.matchResults});

  factory MatchResults.fromJson(List<dynamic> json) {
    return MatchResults(
        matchResults: (json).map((i) => MatchResult.fromJson(i)).toList()
    );
  }
}
