import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssinaturasRecord extends FirestoreRecord {
  AssinaturasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID_Assinatura" field.
  String? _iDAssinatura;
  String get iDAssinatura => _iDAssinatura ?? '';
  bool hasIDAssinatura() => _iDAssinatura != null;

  // "Data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "API_Price_Assinatura" field.
  String? _aPIPriceAssinatura;
  String get aPIPriceAssinatura => _aPIPriceAssinatura ?? '';
  bool hasAPIPriceAssinatura() => _aPIPriceAssinatura != null;

  // "Customer" field.
  String? _customer;
  String get customer => _customer ?? '';
  bool hasCustomer() => _customer != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _iDAssinatura = snapshotData['ID_Assinatura'] as String?;
    _data = snapshotData['Data'] as DateTime?;
    _aPIPriceAssinatura = snapshotData['API_Price_Assinatura'] as String?;
    _customer = snapshotData['Customer'] as String?;
    _email = snapshotData['Email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assinaturas');

  static Stream<AssinaturasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssinaturasRecord.fromSnapshot(s));

  static Future<AssinaturasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssinaturasRecord.fromSnapshot(s));

  static AssinaturasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssinaturasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssinaturasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssinaturasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssinaturasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssinaturasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssinaturasRecordData({
  String? iDAssinatura,
  DateTime? data,
  String? aPIPriceAssinatura,
  String? customer,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID_Assinatura': iDAssinatura,
      'Data': data,
      'API_Price_Assinatura': aPIPriceAssinatura,
      'Customer': customer,
      'Email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssinaturasRecordDocumentEquality implements Equality<AssinaturasRecord> {
  const AssinaturasRecordDocumentEquality();

  @override
  bool equals(AssinaturasRecord? e1, AssinaturasRecord? e2) {
    return e1?.iDAssinatura == e2?.iDAssinatura &&
        e1?.data == e2?.data &&
        e1?.aPIPriceAssinatura == e2?.aPIPriceAssinatura &&
        e1?.customer == e2?.customer &&
        e1?.email == e2?.email;
  }

  @override
  int hash(AssinaturasRecord? e) => const ListEquality().hash(
      [e?.iDAssinatura, e?.data, e?.aPIPriceAssinatura, e?.customer, e?.email]);

  @override
  bool isValidKey(Object? o) => o is AssinaturasRecord;
}
