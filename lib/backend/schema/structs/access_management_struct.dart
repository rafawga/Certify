// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AccessManagementStruct extends FFFirebaseStruct {
  AccessManagementStruct({
    bool? hasSubscription,
    bool? isUnlimited,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hasSubscription = hasSubscription,
        _isUnlimited = isUnlimited,
        super(firestoreUtilData);

  // "HasSubscription" field.
  bool? _hasSubscription;
  bool get hasSubscription => _hasSubscription ?? false;
  set hasSubscription(bool? val) => _hasSubscription = val;

  bool hasHasSubscription() => _hasSubscription != null;

  // "IsUnlimited" field.
  bool? _isUnlimited;
  bool get isUnlimited => _isUnlimited ?? false;
  set isUnlimited(bool? val) => _isUnlimited = val;

  bool hasIsUnlimited() => _isUnlimited != null;

  static AccessManagementStruct fromMap(Map<String, dynamic> data) =>
      AccessManagementStruct(
        hasSubscription: data['HasSubscription'] as bool?,
        isUnlimited: data['IsUnlimited'] as bool?,
      );

  static AccessManagementStruct? maybeFromMap(dynamic data) => data is Map
      ? AccessManagementStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'HasSubscription': _hasSubscription,
        'IsUnlimited': _isUnlimited,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'HasSubscription': serializeParam(
          _hasSubscription,
          ParamType.bool,
        ),
        'IsUnlimited': serializeParam(
          _isUnlimited,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AccessManagementStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccessManagementStruct(
        hasSubscription: deserializeParam(
          data['HasSubscription'],
          ParamType.bool,
          false,
        ),
        isUnlimited: deserializeParam(
          data['IsUnlimited'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AccessManagementStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccessManagementStruct &&
        hasSubscription == other.hasSubscription &&
        isUnlimited == other.isUnlimited;
  }

  @override
  int get hashCode => const ListEquality().hash([hasSubscription, isUnlimited]);
}

AccessManagementStruct createAccessManagementStruct({
  bool? hasSubscription,
  bool? isUnlimited,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccessManagementStruct(
      hasSubscription: hasSubscription,
      isUnlimited: isUnlimited,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AccessManagementStruct? updateAccessManagementStruct(
  AccessManagementStruct? accessManagement, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    accessManagement
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAccessManagementStructData(
  Map<String, dynamic> firestoreData,
  AccessManagementStruct? accessManagement,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (accessManagement == null) {
    return;
  }
  if (accessManagement.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && accessManagement.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final accessManagementData =
      getAccessManagementFirestoreData(accessManagement, forFieldValue);
  final nestedData =
      accessManagementData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = accessManagement.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAccessManagementFirestoreData(
  AccessManagementStruct? accessManagement, [
  bool forFieldValue = false,
]) {
  if (accessManagement == null) {
    return {};
  }
  final firestoreData = mapToFirestore(accessManagement.toMap());

  // Add any Firestore field values
  accessManagement.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAccessManagementListFirestoreData(
  List<AccessManagementStruct>? accessManagements,
) =>
    accessManagements
        ?.map((e) => getAccessManagementFirestoreData(e, true))
        .toList() ??
    [];
