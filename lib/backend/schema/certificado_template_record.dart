import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CertificadoTemplateRecord extends FirestoreRecord {
  CertificadoTemplateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Certificado" field.
  String? _certificado;
  String get certificado => _certificado ?? '';
  bool hasCertificado() => _certificado != null;

  // "CertificadoCOR" field.
  String? _certificadoCOR;
  String get certificadoCOR => _certificadoCOR ?? '';
  bool hasCertificadoCOR() => _certificadoCOR != null;

  // "CertificadoSIZE" field.
  String? _certificadoSIZE;
  String get certificadoSIZE => _certificadoSIZE ?? '';
  bool hasCertificadoSIZE() => _certificadoSIZE != null;

  // "BackgroundPhoto" field.
  String? _backgroundPhoto;
  String get backgroundPhoto => _backgroundPhoto ?? '';
  bool hasBackgroundPhoto() => _backgroundPhoto != null;

  // "TemplateName" field.
  String? _templateName;
  String get templateName => _templateName ?? '';
  bool hasTemplateName() => _templateName != null;

  // "PreName" field.
  String? _preName;
  String get preName => _preName ?? '';
  bool hasPreName() => _preName != null;

  // "PreNameCOR" field.
  String? _preNameCOR;
  String get preNameCOR => _preNameCOR ?? '';
  bool hasPreNameCOR() => _preNameCOR != null;

  // "PreNameSize" field.
  String? _preNameSize;
  String get preNameSize => _preNameSize ?? '';
  bool hasPreNameSize() => _preNameSize != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _certificado = snapshotData['Certificado'] as String?;
    _certificadoCOR = snapshotData['CertificadoCOR'] as String?;
    _certificadoSIZE = snapshotData['CertificadoSIZE'] as String?;
    _backgroundPhoto = snapshotData['BackgroundPhoto'] as String?;
    _templateName = snapshotData['TemplateName'] as String?;
    _preName = snapshotData['PreName'] as String?;
    _preNameCOR = snapshotData['PreNameCOR'] as String?;
    _preNameSize = snapshotData['PreNameSize'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CertificadoTemplate')
          : FirebaseFirestore.instance.collectionGroup('CertificadoTemplate');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CertificadoTemplate').doc(id);

  static Stream<CertificadoTemplateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificadoTemplateRecord.fromSnapshot(s));

  static Future<CertificadoTemplateRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertificadoTemplateRecord.fromSnapshot(s));

  static CertificadoTemplateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CertificadoTemplateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificadoTemplateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificadoTemplateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificadoTemplateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificadoTemplateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificadoTemplateRecordData({
  String? certificado,
  String? certificadoCOR,
  String? certificadoSIZE,
  String? backgroundPhoto,
  String? templateName,
  String? preName,
  String? preNameCOR,
  String? preNameSize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Certificado': certificado,
      'CertificadoCOR': certificadoCOR,
      'CertificadoSIZE': certificadoSIZE,
      'BackgroundPhoto': backgroundPhoto,
      'TemplateName': templateName,
      'PreName': preName,
      'PreNameCOR': preNameCOR,
      'PreNameSize': preNameSize,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertificadoTemplateRecordDocumentEquality
    implements Equality<CertificadoTemplateRecord> {
  const CertificadoTemplateRecordDocumentEquality();

  @override
  bool equals(CertificadoTemplateRecord? e1, CertificadoTemplateRecord? e2) {
    return e1?.certificado == e2?.certificado &&
        e1?.certificadoCOR == e2?.certificadoCOR &&
        e1?.certificadoSIZE == e2?.certificadoSIZE &&
        e1?.backgroundPhoto == e2?.backgroundPhoto &&
        e1?.templateName == e2?.templateName &&
        e1?.preName == e2?.preName &&
        e1?.preNameCOR == e2?.preNameCOR &&
        e1?.preNameSize == e2?.preNameSize;
  }

  @override
  int hash(CertificadoTemplateRecord? e) => const ListEquality().hash([
        e?.certificado,
        e?.certificadoCOR,
        e?.certificadoSIZE,
        e?.backgroundPhoto,
        e?.templateName,
        e?.preName,
        e?.preNameCOR,
        e?.preNameSize
      ]);

  @override
  bool isValidKey(Object? o) => o is CertificadoTemplateRecord;
}
