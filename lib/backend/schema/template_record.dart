import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateRecord extends FirestoreRecord {
  TemplateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Cor" field.
  String? _cor;
  String get cor => _cor ?? '';
  bool hasCor() => _cor != null;

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "Index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "CursoID" field.
  DocumentReference? _cursoID;
  DocumentReference? get cursoID => _cursoID;
  bool hasCursoID() => _cursoID != null;

  // "Profissional" field.
  bool? _profissional;
  bool get profissional => _profissional ?? false;
  bool hasProfissional() => _profissional != null;

  // "DataConclusao" field.
  bool? _dataConclusao;
  bool get dataConclusao => _dataConclusao ?? false;
  bool hasDataConclusao() => _dataConclusao != null;

  // "CargaHoraria" field.
  bool? _cargaHoraria;
  bool get cargaHoraria => _cargaHoraria ?? false;
  bool hasCargaHoraria() => _cargaHoraria != null;

  // "IsACourse" field.
  bool? _isACourse;
  bool get isACourse => _isACourse ?? false;
  bool hasIsACourse() => _isACourse != null;

  // "HasLogo" field.
  bool? _hasLogo;
  bool get hasLogo => _hasLogo ?? false;
  bool hasHasLogo() => _hasLogo != null;

  // "LogoPath" field.
  String? _logoPath;
  String get logoPath => _logoPath ?? '';
  bool hasLogoPath() => _logoPath != null;

  // "LogoPathTemp" field.
  String? _logoPathTemp;
  String get logoPathTemp => _logoPathTemp ?? '';
  bool hasLogoPathTemp() => _logoPathTemp != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _cor = snapshotData['Cor'] as String?;
    _userID = snapshotData['UserID'] as DocumentReference?;
    _index = castToType<int>(snapshotData['Index']);
    _cursoID = snapshotData['CursoID'] as DocumentReference?;
    _profissional = snapshotData['Profissional'] as bool?;
    _dataConclusao = snapshotData['DataConclusao'] as bool?;
    _cargaHoraria = snapshotData['CargaHoraria'] as bool?;
    _isACourse = snapshotData['IsACourse'] as bool?;
    _hasLogo = snapshotData['HasLogo'] as bool?;
    _logoPath = snapshotData['LogoPath'] as String?;
    _logoPathTemp = snapshotData['LogoPathTemp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Template');

  static Stream<TemplateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateRecord.fromSnapshot(s));

  static Future<TemplateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemplateRecord.fromSnapshot(s));

  static TemplateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateRecordData({
  String? nome,
  String? cor,
  DocumentReference? userID,
  int? index,
  DocumentReference? cursoID,
  bool? profissional,
  bool? dataConclusao,
  bool? cargaHoraria,
  bool? isACourse,
  bool? hasLogo,
  String? logoPath,
  String? logoPathTemp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Cor': cor,
      'UserID': userID,
      'Index': index,
      'CursoID': cursoID,
      'Profissional': profissional,
      'DataConclusao': dataConclusao,
      'CargaHoraria': cargaHoraria,
      'IsACourse': isACourse,
      'HasLogo': hasLogo,
      'LogoPath': logoPath,
      'LogoPathTemp': logoPathTemp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateRecordDocumentEquality implements Equality<TemplateRecord> {
  const TemplateRecordDocumentEquality();

  @override
  bool equals(TemplateRecord? e1, TemplateRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.cor == e2?.cor &&
        e1?.userID == e2?.userID &&
        e1?.index == e2?.index &&
        e1?.cursoID == e2?.cursoID &&
        e1?.profissional == e2?.profissional &&
        e1?.dataConclusao == e2?.dataConclusao &&
        e1?.cargaHoraria == e2?.cargaHoraria &&
        e1?.isACourse == e2?.isACourse &&
        e1?.hasLogo == e2?.hasLogo &&
        e1?.logoPath == e2?.logoPath &&
        e1?.logoPathTemp == e2?.logoPathTemp;
  }

  @override
  int hash(TemplateRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.cor,
        e?.userID,
        e?.index,
        e?.cursoID,
        e?.profissional,
        e?.dataConclusao,
        e?.cargaHoraria,
        e?.isACourse,
        e?.hasLogo,
        e?.logoPath,
        e?.logoPathTemp
      ]);

  @override
  bool isValidKey(Object? o) => o is TemplateRecord;
}
