class RewardsEarnedModel {
  final String date;
  final String score;
  final String rewards;

  RewardsEarnedModel({
    required this.date,
    required this.score,
    required this.rewards,
  });
}

List<RewardsEarnedModel> rewardsmodelData = [
  RewardsEarnedModel(date: '6 oct', score: '1', rewards: '2'),
  RewardsEarnedModel(date: '7 oct', score: '2', rewards: '1'),
];
