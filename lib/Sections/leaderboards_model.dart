class LeaderboardsModel {
  final String rank;
  final String name;
  final String location;
  final String score;

  LeaderboardsModel({
    required this.rank,
    required this.name,
    required this.location,
    required this.score,
  });
}

List<LeaderboardsModel> leaderboardData = [
  LeaderboardsModel(
      name: 'Name1', location: 'Hyderabad', score: '1337', rank: '1'),
  LeaderboardsModel(
      name: 'Name2', location: 'Hyderabad', score: '426', rank: '2'),
];
