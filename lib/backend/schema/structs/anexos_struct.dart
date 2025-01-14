// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AnexosStruct extends FFFirebaseStruct {
  AnexosStruct({
    String? name,
    String? binary,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _binary = binary,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Binary" field.
  String? _binary;
  String get binary => _binary ?? '';
  set binary(String? val) => _binary = val;

  bool hasBinary() => _binary != null;

  static AnexosStruct fromMap(Map<String, dynamic> data) => AnexosStruct(
        name: data['Name'] as String?,
        binary: data['Binary'] as String?,
      );

  static AnexosStruct? maybeFromMap(dynamic data) =>
      data is Map ? AnexosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Binary': _binary,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Binary': serializeParam(
          _binary,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnexosStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnexosStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        binary: deserializeParam(
          data['Binary'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnexosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnexosStruct &&
        name == other.name &&
        binary == other.binary;
  }

  @override
  int get hashCode => const ListEquality().hash([name, binary]);
}

AnexosStruct createAnexosStruct({
  String? name,
  String? binary,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnexosStruct(
      name: name,
      binary: binary,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnexosStruct? updateAnexosStruct(
  AnexosStruct? anexos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    anexos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnexosStructData(
  Map<String, dynamic> firestoreData,
  AnexosStruct? anexos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (anexos == null) {
    return;
  }
  if (anexos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && anexos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final anexosData = getAnexosFirestoreData(anexos, forFieldValue);
  final nestedData = anexosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = anexos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnexosFirestoreData(
  AnexosStruct? anexos, [
  bool forFieldValue = false,
]) {
  if (anexos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(anexos.toMap());

  // Add any Firestore field values
  anexos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnexosListFirestoreData(
  List<AnexosStruct>? anexoss,
) =>
    anexoss?.map((e) => getAnexosFirestoreData(e, true)).toList() ?? [];
