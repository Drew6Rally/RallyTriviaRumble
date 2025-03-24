// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    Categories? category,
    DateTime? submittedDate,
    DocumentReference? user,
    String? questionText,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _category = category,
        _submittedDate = submittedDate,
        _user = user,
        _questionText = questionText,
        super(firestoreUtilData);

  // "category" field.
  Categories? _category;
  Categories? get category => _category;
  set category(Categories? val) => _category = val;

  bool hasCategory() => _category != null;

  // "submittedDate" field.
  DateTime? _submittedDate;
  DateTime? get submittedDate => _submittedDate;
  set submittedDate(DateTime? val) => _submittedDate = val;

  bool hasSubmittedDate() => _submittedDate != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "questionText" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  set questionText(String? val) => _questionText = val;

  bool hasQuestionText() => _questionText != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        category: data['category'] is Categories
            ? data['category']
            : deserializeEnum<Categories>(data['category']),
        submittedDate: data['submittedDate'] as DateTime?,
        user: data['user'] as DocumentReference?,
        questionText: data['questionText'] as String?,
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'category': _category?.serialize(),
        'submittedDate': _submittedDate,
        'user': _user,
        'questionText': _questionText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.Enum,
        ),
        'submittedDate': serializeParam(
          _submittedDate,
          ParamType.DateTime,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'questionText': serializeParam(
          _questionText,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        category: deserializeParam<Categories>(
          data['category'],
          ParamType.Enum,
          false,
        ),
        submittedDate: deserializeParam(
          data['submittedDate'],
          ParamType.DateTime,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        questionText: deserializeParam(
          data['questionText'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionStruct &&
        category == other.category &&
        submittedDate == other.submittedDate &&
        user == other.user &&
        questionText == other.questionText;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([category, submittedDate, user, questionText]);
}

QuestionStruct createQuestionStruct({
  Categories? category,
  DateTime? submittedDate,
  DocumentReference? user,
  String? questionText,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      category: category,
      submittedDate: submittedDate,
      user: user,
      questionText: questionText,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? question, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    question
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? question,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (question == null) {
    return;
  }
  if (question.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && question.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionData = getQuestionFirestoreData(question, forFieldValue);
  final nestedData = questionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = question.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? question, [
  bool forFieldValue = false,
]) {
  if (question == null) {
    return {};
  }
  final firestoreData = mapToFirestore(question.toMap());

  // Add any Firestore field values
  question.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questions,
) =>
    questions?.map((e) => getQuestionFirestoreData(e, true)).toList() ?? [];
