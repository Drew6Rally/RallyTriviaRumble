import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnswerRecord extends FirestoreRecord {
  AnswerRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('answer')
          : FirebaseFirestore.instance.collectionGroup('answer');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('answer').doc(id);

  static Stream<AnswerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnswerRecord.fromSnapshot(s));

  static Future<AnswerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnswerRecord.fromSnapshot(s));

  static AnswerRecord fromSnapshot(DocumentSnapshot snapshot) => AnswerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnswerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnswerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnswerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnswerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnswerRecordData({
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnswerRecordDocumentEquality implements Equality<AnswerRecord> {
  const AnswerRecordDocumentEquality();

  @override
  bool equals(AnswerRecord? e1, AnswerRecord? e2) {
    return e1?.text == e2?.text;
  }

  @override
  int hash(AnswerRecord? e) => const ListEquality().hash([e?.text]);

  @override
  bool isValidKey(Object? o) => o is AnswerRecord;
}
