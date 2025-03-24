import '../database.dart';

class TestTable extends SupabaseTable<TestRow> {
  @override
  String get tableName => 'test';

  @override
  TestRow createRow(Map<String, dynamic> data) => TestRow(data);
}

class TestRow extends SupabaseDataRow {
  TestRow(super.data);

  @override
  SupabaseTable get table => TestTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('Name')!;
  set name(String value) => setField<String>('Name', value);
}
