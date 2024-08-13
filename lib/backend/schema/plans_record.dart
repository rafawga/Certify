import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlansRecord extends FirestoreRecord {
  PlansRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "priceMonthly" field.
  double? _priceMonthly;
  double get priceMonthly => _priceMonthly ?? 0.0;
  bool hasPriceMonthly() => _priceMonthly != null;

  // "priceYearly" field.
  double? _priceYearly;
  double get priceYearly => _priceYearly ?? 0.0;
  bool hasPriceYearly() => _priceYearly != null;

  // "strikePriceMonthly" field.
  double? _strikePriceMonthly;
  double get strikePriceMonthly => _strikePriceMonthly ?? 0.0;
  bool hasStrikePriceMonthly() => _strikePriceMonthly != null;

  // "strikePriceYearly" field.
  double? _strikePriceYearly;
  double get strikePriceYearly => _strikePriceYearly ?? 0.0;
  bool hasStrikePriceYearly() => _strikePriceYearly != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  bool hasSubtitle() => _subtitle != null;

  // "coursesAllowed" field.
  int? _coursesAllowed;
  int get coursesAllowed => _coursesAllowed ?? 0;
  bool hasCoursesAllowed() => _coursesAllowed != null;

  // "studentsPerCourse" field.
  int? _studentsPerCourse;
  int get studentsPerCourse => _studentsPerCourse ?? 0;
  bool hasStudentsPerCourse() => _studentsPerCourse != null;

  // "Feauture" field.
  List<String>? _feauture;
  List<String> get feauture => _feauture ?? const [];
  bool hasFeauture() => _feauture != null;

  // "isRecommended" field.
  bool? _isRecommended;
  bool get isRecommended => _isRecommended ?? false;
  bool hasIsRecommended() => _isRecommended != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _priceMonthly = castToType<double>(snapshotData['priceMonthly']);
    _priceYearly = castToType<double>(snapshotData['priceYearly']);
    _strikePriceMonthly =
        castToType<double>(snapshotData['strikePriceMonthly']);
    _strikePriceYearly = castToType<double>(snapshotData['strikePriceYearly']);
    _subtitle = snapshotData['subtitle'] as String?;
    _coursesAllowed = castToType<int>(snapshotData['coursesAllowed']);
    _studentsPerCourse = castToType<int>(snapshotData['studentsPerCourse']);
    _feauture = getDataList(snapshotData['Feauture']);
    _isRecommended = snapshotData['isRecommended'] as bool?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plans');

  static Stream<PlansRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlansRecord.fromSnapshot(s));

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlansRecord.fromSnapshot(s));

  static PlansRecord fromSnapshot(DocumentSnapshot snapshot) => PlansRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlansRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlansRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlansRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlansRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlansRecordData({
  String? name,
  double? priceMonthly,
  double? priceYearly,
  double? strikePriceMonthly,
  double? strikePriceYearly,
  String? subtitle,
  int? coursesAllowed,
  int? studentsPerCourse,
  bool? isRecommended,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'priceMonthly': priceMonthly,
      'priceYearly': priceYearly,
      'strikePriceMonthly': strikePriceMonthly,
      'strikePriceYearly': strikePriceYearly,
      'subtitle': subtitle,
      'coursesAllowed': coursesAllowed,
      'studentsPerCourse': studentsPerCourse,
      'isRecommended': isRecommended,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlansRecordDocumentEquality implements Equality<PlansRecord> {
  const PlansRecordDocumentEquality();

  @override
  bool equals(PlansRecord? e1, PlansRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.priceMonthly == e2?.priceMonthly &&
        e1?.priceYearly == e2?.priceYearly &&
        e1?.strikePriceMonthly == e2?.strikePriceMonthly &&
        e1?.strikePriceYearly == e2?.strikePriceYearly &&
        e1?.subtitle == e2?.subtitle &&
        e1?.coursesAllowed == e2?.coursesAllowed &&
        e1?.studentsPerCourse == e2?.studentsPerCourse &&
        listEquality.equals(e1?.feauture, e2?.feauture) &&
        e1?.isRecommended == e2?.isRecommended &&
        e1?.order == e2?.order;
  }

  @override
  int hash(PlansRecord? e) => const ListEquality().hash([
        e?.name,
        e?.priceMonthly,
        e?.priceYearly,
        e?.strikePriceMonthly,
        e?.strikePriceYearly,
        e?.subtitle,
        e?.coursesAllowed,
        e?.studentsPerCourse,
        e?.feauture,
        e?.isRecommended,
        e?.order
      ]);

  @override
  bool isValidKey(Object? o) => o is PlansRecord;
}
