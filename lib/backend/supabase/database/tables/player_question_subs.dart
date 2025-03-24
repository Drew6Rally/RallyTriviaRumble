import '../database.dart';

class PlayerQuestionSubsTable extends SupabaseTable<PlayerQuestionSubsRow> {
  @override
  String get tableName => 'player_question_subs';

  @override
  PlayerQuestionSubsRow createRow(Map<String, dynamic> data) =>
      PlayerQuestionSubsRow(data);
}

class PlayerQuestionSubsRow extends SupabaseDataRow {
  PlayerQuestionSubsRow(super.data);

  @override
  SupabaseTable get table => PlayerQuestionSubsTable();

  String? get triviaHost => getField<String>('trivia_host');
  set triviaHost(String? value) => setField<String>('trivia_host', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  String get date => getField<String>('Date')!;
  set date(String value) => setField<String>('Date', value);

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);

  String? get answer => getField<String>('Answer');
  set answer(String? value) => setField<String>('Answer', value);

  String? get playersWithCorrectAnswer =>
      getField<String>('Player(s) with Correct Answer');
  set playersWithCorrectAnswer(String? value) =>
      setField<String>('Player(s) with Correct Answer', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
