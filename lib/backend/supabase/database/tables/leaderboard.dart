import '../database.dart';

class LeaderboardTable extends SupabaseTable<LeaderboardRow> {
  @override
  String get tableName => 'Leaderboard';

  @override
  LeaderboardRow createRow(Map<String, dynamic> data) => LeaderboardRow(data);
}

class LeaderboardRow extends SupabaseDataRow {
  LeaderboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LeaderboardTable();

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  int? get score => getField<int>('Score');
  set score(int? value) => setField<int>('Score', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
