import '../database.dart';

class PlayerAnswerSubmissionsTable
    extends SupabaseTable<PlayerAnswerSubmissionsRow> {
  @override
  String get tableName => 'player_answer_submissions';

  @override
  PlayerAnswerSubmissionsRow createRow(Map<String, dynamic> data) =>
      PlayerAnswerSubmissionsRow(data);
}

class PlayerAnswerSubmissionsRow extends SupabaseDataRow {
  PlayerAnswerSubmissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlayerAnswerSubmissionsTable();

  String get timestamp => getField<String>('Timestamp')!;
  set timestamp(String value) => setField<String>('Timestamp', value);

  String? get playerName => getField<String>('Player Name');
  set playerName(String? value) => setField<String>('Player Name', value);

  String? get finalAnswer => getField<String>('Final Answer:');
  set finalAnswer(String? value) => setField<String>('Final Answer:', value);

  DateTime? get enterTodaysDate => getField<DateTime>('Enter Today\'s Date');
  set enterTodaysDate(DateTime? value) =>
      setField<DateTime>('Enter Today\'s Date', value);

  String? get day => getField<String>('Day');
  set day(String? value) => setField<String>('Day', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
