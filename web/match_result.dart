class MatchResult {
  final int pointsTeam1;
  final int pointsTeam2;

  MatchResult({required this.pointsTeam1, required this.pointsTeam2});

  factory MatchResult.fromJson(Map<String, dynamic> json) {
    return MatchResult(
        pointsTeam1: json['pointsTeam1'],
        pointsTeam2: json['pointsTeam2']
    );
  }
}
