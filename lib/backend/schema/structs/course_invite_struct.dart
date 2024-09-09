// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CourseInviteStruct extends FFFirebaseStruct {
  CourseInviteStruct({
    DateTime? date,
    String? code,
    bool? isActive,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _code = code,
        _isActive = isActive,
        super(firestoreUtilData);

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "Code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  static CourseInviteStruct fromMap(Map<String, dynamic> data) =>
      CourseInviteStruct(
        date: data['Date'] as DateTime?,
        code: data['Code'] as String?,
        isActive: data['isActive'] as bool?,
      );

  static CourseInviteStruct? maybeFromMap(dynamic data) => data is Map
      ? CourseInviteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Date': _date,
        'Code': _code,
        'isActive': _isActive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'Code': serializeParam(
          _code,
          ParamType.String,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CourseInviteStruct fromSerializableMap(Map<String, dynamic> data) =>
      CourseInviteStruct(
        date: deserializeParam(
          data['Date'],
          ParamType.DateTime,
          false,
        ),
        code: deserializeParam(
          data['Code'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CourseInviteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CourseInviteStruct &&
        date == other.date &&
        code == other.code &&
        isActive == other.isActive;
  }

  @override
  int get hashCode => const ListEquality().hash([date, code, isActive]);
}

CourseInviteStruct createCourseInviteStruct({
  DateTime? date,
  String? code,
  bool? isActive,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CourseInviteStruct(
      date: date,
      code: code,
      isActive: isActive,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CourseInviteStruct? updateCourseInviteStruct(
  CourseInviteStruct? courseInvite, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    courseInvite
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCourseInviteStructData(
  Map<String, dynamic> firestoreData,
  CourseInviteStruct? courseInvite,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (courseInvite == null) {
    return;
  }
  if (courseInvite.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && courseInvite.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final courseInviteData =
      getCourseInviteFirestoreData(courseInvite, forFieldValue);
  final nestedData =
      courseInviteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = courseInvite.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCourseInviteFirestoreData(
  CourseInviteStruct? courseInvite, [
  bool forFieldValue = false,
]) {
  if (courseInvite == null) {
    return {};
  }
  final firestoreData = mapToFirestore(courseInvite.toMap());

  // Add any Firestore field values
  courseInvite.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCourseInviteListFirestoreData(
  List<CourseInviteStruct>? courseInvites,
) =>
    courseInvites?.map((e) => getCourseInviteFirestoreData(e, true)).toList() ??
    [];
