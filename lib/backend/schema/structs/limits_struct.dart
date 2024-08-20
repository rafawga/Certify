// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LimitsStruct extends FFFirebaseStruct {
  LimitsStruct({
    int? certificados,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _certificados = certificados,
        super(firestoreUtilData);

  // "certificados" field.
  int? _certificados;
  int get certificados => _certificados ?? 0;
  set certificados(int? val) => _certificados = val;

  void incrementCertificados(int amount) =>
      certificados = certificados + amount;

  bool hasCertificados() => _certificados != null;

  static LimitsStruct fromMap(Map<String, dynamic> data) => LimitsStruct(
        certificados: castToType<int>(data['certificados']),
      );

  static LimitsStruct? maybeFromMap(dynamic data) =>
      data is Map ? LimitsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'certificados': _certificados,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'certificados': serializeParam(
          _certificados,
          ParamType.int,
        ),
      }.withoutNulls;

  static LimitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LimitsStruct(
        certificados: deserializeParam(
          data['certificados'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LimitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LimitsStruct && certificados == other.certificados;
  }

  @override
  int get hashCode => const ListEquality().hash([certificados]);
}

LimitsStruct createLimitsStruct({
  int? certificados,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LimitsStruct(
      certificados: certificados,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LimitsStruct? updateLimitsStruct(
  LimitsStruct? limits, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    limits
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLimitsStructData(
  Map<String, dynamic> firestoreData,
  LimitsStruct? limits,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (limits == null) {
    return;
  }
  if (limits.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && limits.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final limitsData = getLimitsFirestoreData(limits, forFieldValue);
  final nestedData = limitsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = limits.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLimitsFirestoreData(
  LimitsStruct? limits, [
  bool forFieldValue = false,
]) {
  if (limits == null) {
    return {};
  }
  final firestoreData = mapToFirestore(limits.toMap());

  // Add any Firestore field values
  limits.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLimitsListFirestoreData(
  List<LimitsStruct>? limitss,
) =>
    limitss?.map((e) => getLimitsFirestoreData(e, true)).toList() ?? [];
