import 'match_results.dart';
import 'team.dart';

class Match {
  final Team team1;
  final Team team2;
  final MatchResults matchResults;

  Match(this.team1, this.team2, this.matchResults);

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
        Team.fromJson(json['team1']),
        Team.fromJson(json['team2']),
        MatchResults.fromJson(json['matchResults']));
  }

  @override
  String toString() {
    return team1.teamName + " " + matchResults.matchResults[0].pointsTeam1.toString() + ":" + matchResults.matchResults[0].pointsTeam2.toString() + " " + team2.teamName;
  }
}
