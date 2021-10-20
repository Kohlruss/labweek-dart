class Team {
  final String teamName;
  final String teamIconUrl;

  Team({required this.teamName, required this.teamIconUrl});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
        teamName: json['teamName'],
        teamIconUrl: json['teamIconUrl']
    );
  }
}
