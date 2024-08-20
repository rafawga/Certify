// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserPlanStruct extends FFFirebaseStruct {
  UserPlanStruct({
    String? priceID,
    String? planName,
    String? interval,
    DateTime? startDate,
    DateTime? endDate,
    String? customerId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _priceID = priceID,
        _planName = planName,
        _interval = interval,
        _startDate = startDate,
        _endDate = endDate,
        _customerId = customerId,
        super(firestoreUtilData);

  // "priceID" field.
  String? _priceID;
  String get priceID => _priceID ?? '';
  set priceID(String? val) => _priceID = val;

  bool hasPriceID() => _priceID != null;

  // "plan_name" field.
  String? _planName;
  String get planName => _planName ?? '';
  set planName(String? val) => _planName = val;

  bool hasPlanName() => _planName != null;

  // "interval" field.
  String? _interval;
  String get interval => _interval ?? '';
  set interval(String? val) => _interval = val;

  bool hasInterval() => _interval != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  static UserPlanStruct fromMap(Map<String, dynamic> data) => UserPlanStruct(
        priceID: data['priceID'] as String?,
        planName: data['plan_name'] as String?,
        interval: data['interval'] as String?,
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
        customerId: data['customer_id'] as String?,
      );

  static UserPlanStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserPlanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'priceID': _priceID,
        'plan_name': _planName,
        'interval': _interval,
        'start_date': _startDate,
        'end_date': _endDate,
        'customer_id': _customerId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'priceID': serializeParam(
          _priceID,
          ParamType.String,
        ),
        'plan_name': serializeParam(
          _planName,
          ParamType.String,
        ),
        'interval': serializeParam(
          _interval,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'customer_id': serializeParam(
          _customerId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserPlanStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserPlanStruct(
        priceID: deserializeParam(
          data['priceID'],
          ParamType.String,
          false,
        ),
        planName: deserializeParam(
          data['plan_name'],
          ParamType.String,
          false,
        ),
        interval: deserializeParam(
          data['interval'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
        customerId: deserializeParam(
          data['customer_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserPlanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserPlanStruct &&
        priceID == other.priceID &&
        planName == other.planName &&
        interval == other.interval &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        customerId == other.customerId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([priceID, planName, interval, startDate, endDate, customerId]);
}

UserPlanStruct createUserPlanStruct({
  String? priceID,
  String? planName,
  String? interval,
  DateTime? startDate,
  DateTime? endDate,
  String? customerId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserPlanStruct(
      priceID: priceID,
      planName: planName,
      interval: interval,
      startDate: startDate,
      endDate: endDate,
      customerId: customerId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserPlanStruct? updateUserPlanStruct(
  UserPlanStruct? userPlan, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userPlan
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserPlanStructData(
  Map<String, dynamic> firestoreData,
  UserPlanStruct? userPlan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userPlan == null) {
    return;
  }
  if (userPlan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userPlan.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userPlanData = getUserPlanFirestoreData(userPlan, forFieldValue);
  final nestedData = userPlanData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userPlan.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserPlanFirestoreData(
  UserPlanStruct? userPlan, [
  bool forFieldValue = false,
]) {
  if (userPlan == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userPlan.toMap());

  // Add any Firestore field values
  userPlan.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserPlanListFirestoreData(
  List<UserPlanStruct>? userPlans,
) =>
    userPlans?.map((e) => getUserPlanFirestoreData(e, true)).toList() ?? [];
