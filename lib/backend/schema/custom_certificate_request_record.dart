import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomCertificateRequestRecord extends FirestoreRecord {
  CustomCertificateRequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "UserId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "CheckoutPaid" field.
  bool? _checkoutPaid;
  bool get checkoutPaid => _checkoutPaid ?? false;
  bool hasCheckoutPaid() => _checkoutPaid != null;

  // "UserEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "Finished" field.
  bool? _finished;
  bool get finished => _finished ?? false;
  bool hasFinished() => _finished != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "Resumo" field.
  String? _resumo;
  String get resumo => _resumo ?? '';
  bool hasResumo() => _resumo != null;

  // "Anexos" field.
  List<AnexosStruct>? _anexos;
  List<AnexosStruct> get anexos => _anexos ?? const [];
  bool hasAnexos() => _anexos != null;

  void _initializeFields() {
    _userId = snapshotData['UserId'] as DocumentReference?;
    _date = snapshotData['Date'] as DateTime?;
    _comment = snapshotData['Comment'] as String?;
    _checkoutPaid = snapshotData['CheckoutPaid'] as bool?;
    _userEmail = snapshotData['UserEmail'] as String?;
    _finished = snapshotData['Finished'] as bool?;
    _telefone = snapshotData['telefone'] as String?;
    _resumo = snapshotData['Resumo'] as String?;
    _anexos = getStructList(
      snapshotData['Anexos'],
      AnexosStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CustomCertificateRequest');

  static Stream<CustomCertificateRequestRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CustomCertificateRequestRecord.fromSnapshot(s));

  static Future<CustomCertificateRequestRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CustomCertificateRequestRecord.fromSnapshot(s));

  static CustomCertificateRequestRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CustomCertificateRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomCertificateRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomCertificateRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomCertificateRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomCertificateRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomCertificateRequestRecordData({
  DocumentReference? userId,
  DateTime? date,
  String? comment,
  bool? checkoutPaid,
  String? userEmail,
  bool? finished,
  String? telefone,
  String? resumo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserId': userId,
      'Date': date,
      'Comment': comment,
      'CheckoutPaid': checkoutPaid,
      'UserEmail': userEmail,
      'Finished': finished,
      'telefone': telefone,
      'Resumo': resumo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomCertificateRequestRecordDocumentEquality
    implements Equality<CustomCertificateRequestRecord> {
  const CustomCertificateRequestRecordDocumentEquality();

  @override
  bool equals(
      CustomCertificateRequestRecord? e1, CustomCertificateRequestRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.date == e2?.date &&
        e1?.comment == e2?.comment &&
        e1?.checkoutPaid == e2?.checkoutPaid &&
        e1?.userEmail == e2?.userEmail &&
        e1?.finished == e2?.finished &&
        e1?.telefone == e2?.telefone &&
        e1?.resumo == e2?.resumo &&
        listEquality.equals(e1?.anexos, e2?.anexos);
  }

  @override
  int hash(CustomCertificateRequestRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.date,
        e?.comment,
        e?.checkoutPaid,
        e?.userEmail,
        e?.finished,
        e?.telefone,
        e?.resumo,
        e?.anexos
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomCertificateRequestRecord;
}
