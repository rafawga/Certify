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
  double? _preNameSize;
  double get preNameSize => _preNameSize ?? 0.0;
  bool hasPreNameSize() => _preNameSize != null;

  // "Aluno" field.
  String? _aluno;
  String get aluno => _aluno ?? '';
  bool hasAluno() => _aluno != null;

  // "AlunoCOR" field.
  String? _alunoCOR;
  String get alunoCOR => _alunoCOR ?? '';
  bool hasAlunoCOR() => _alunoCOR != null;

  // "AlunoSize" field.
  double? _alunoSize;
  double get alunoSize => _alunoSize ?? 0.0;
  bool hasAlunoSize() => _alunoSize != null;

  // "PreCurso" field.
  String? _preCurso;
  String get preCurso => _preCurso ?? '';
  bool hasPreCurso() => _preCurso != null;

  // "PreCursoCOR" field.
  String? _preCursoCOR;
  String get preCursoCOR => _preCursoCOR ?? '';
  bool hasPreCursoCOR() => _preCursoCOR != null;

  // "PreCursoSize" field.
  double? _preCursoSize;
  double get preCursoSize => _preCursoSize ?? 0.0;
  bool hasPreCursoSize() => _preCursoSize != null;

  // "Curso" field.
  String? _curso;
  String get curso => _curso ?? '';
  bool hasCurso() => _curso != null;

  // "CursoCOR" field.
  String? _cursoCOR;
  String get cursoCOR => _cursoCOR ?? '';
  bool hasCursoCOR() => _cursoCOR != null;

  // "CursoSize" field.
  double? _cursoSize;
  double get cursoSize => _cursoSize ?? 0.0;
  bool hasCursoSize() => _cursoSize != null;

  // "PreProf" field.
  String? _preProf;
  String get preProf => _preProf ?? '';
  bool hasPreProf() => _preProf != null;

  // "PreProfCOR" field.
  String? _preProfCOR;
  String get preProfCOR => _preProfCOR ?? '';
  bool hasPreProfCOR() => _preProfCOR != null;

  // "PreProfSize" field.
  double? _preProfSize;
  double get preProfSize => _preProfSize ?? 0.0;
  bool hasPreProfSize() => _preProfSize != null;

  // "Prof" field.
  String? _prof;
  String get prof => _prof ?? '';
  bool hasProf() => _prof != null;

  // "ProfCOR" field.
  String? _profCOR;
  String get profCOR => _profCOR ?? '';
  bool hasProfCOR() => _profCOR != null;

  // "ProfSize" field.
  double? _profSize;
  double get profSize => _profSize ?? 0.0;
  bool hasProfSize() => _profSize != null;

  // "PreData" field.
  String? _preData;
  String get preData => _preData ?? '';
  bool hasPreData() => _preData != null;

  // "PreDataCOR" field.
  String? _preDataCOR;
  String get preDataCOR => _preDataCOR ?? '';
  bool hasPreDataCOR() => _preDataCOR != null;

  // "PreDataSize" field.
  double? _preDataSize;
  double get preDataSize => _preDataSize ?? 0.0;
  bool hasPreDataSize() => _preDataSize != null;

  // "Data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "DataCOR" field.
  String? _dataCOR;
  String get dataCOR => _dataCOR ?? '';
  bool hasDataCOR() => _dataCOR != null;

  // "DataSize" field.
  double? _dataSize;
  double get dataSize => _dataSize ?? 0.0;
  bool hasDataSize() => _dataSize != null;

  // "PreDuracao" field.
  String? _preDuracao;
  String get preDuracao => _preDuracao ?? '';
  bool hasPreDuracao() => _preDuracao != null;

  // "PreDuracaoCOR" field.
  String? _preDuracaoCOR;
  String get preDuracaoCOR => _preDuracaoCOR ?? '';
  bool hasPreDuracaoCOR() => _preDuracaoCOR != null;

  // "PreDuracaoSize" field.
  double? _preDuracaoSize;
  double get preDuracaoSize => _preDuracaoSize ?? 0.0;
  bool hasPreDuracaoSize() => _preDuracaoSize != null;

  // "Duracao" field.
  String? _duracao;
  String get duracao => _duracao ?? '';
  bool hasDuracao() => _duracao != null;

  // "DuracaoCOR" field.
  String? _duracaoCOR;
  String get duracaoCOR => _duracaoCOR ?? '';
  bool hasDuracaoCOR() => _duracaoCOR != null;

  // "DuracaoSize" field.
  double? _duracaoSize;
  double get duracaoSize => _duracaoSize ?? 0.0;
  bool hasDuracaoSize() => _duracaoSize != null;

  // "iDOkeySize" field.
  double? _iDOkeySize;
  double get iDOkeySize => _iDOkeySize ?? 0.0;
  bool hasIDOkeySize() => _iDOkeySize != null;

  // "IsDefaultImage" field.
  bool? _isDefaultImage;
  bool get isDefaultImage => _isDefaultImage ?? false;
  bool hasIsDefaultImage() => _isDefaultImage != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _certificado = snapshotData['Certificado'] as String?;
    _certificadoCOR = snapshotData['CertificadoCOR'] as String?;
    _certificadoSIZE = snapshotData['CertificadoSIZE'] as String?;
    _backgroundPhoto = snapshotData['BackgroundPhoto'] as String?;
    _templateName = snapshotData['TemplateName'] as String?;
    _preName = snapshotData['PreName'] as String?;
    _preNameCOR = snapshotData['PreNameCOR'] as String?;
    _preNameSize = castToType<double>(snapshotData['PreNameSize']);
    _aluno = snapshotData['Aluno'] as String?;
    _alunoCOR = snapshotData['AlunoCOR'] as String?;
    _alunoSize = castToType<double>(snapshotData['AlunoSize']);
    _preCurso = snapshotData['PreCurso'] as String?;
    _preCursoCOR = snapshotData['PreCursoCOR'] as String?;
    _preCursoSize = castToType<double>(snapshotData['PreCursoSize']);
    _curso = snapshotData['Curso'] as String?;
    _cursoCOR = snapshotData['CursoCOR'] as String?;
    _cursoSize = castToType<double>(snapshotData['CursoSize']);
    _preProf = snapshotData['PreProf'] as String?;
    _preProfCOR = snapshotData['PreProfCOR'] as String?;
    _preProfSize = castToType<double>(snapshotData['PreProfSize']);
    _prof = snapshotData['Prof'] as String?;
    _profCOR = snapshotData['ProfCOR'] as String?;
    _profSize = castToType<double>(snapshotData['ProfSize']);
    _preData = snapshotData['PreData'] as String?;
    _preDataCOR = snapshotData['PreDataCOR'] as String?;
    _preDataSize = castToType<double>(snapshotData['PreDataSize']);
    _data = snapshotData['Data'] as String?;
    _dataCOR = snapshotData['DataCOR'] as String?;
    _dataSize = castToType<double>(snapshotData['DataSize']);
    _preDuracao = snapshotData['PreDuracao'] as String?;
    _preDuracaoCOR = snapshotData['PreDuracaoCOR'] as String?;
    _preDuracaoSize = castToType<double>(snapshotData['PreDuracaoSize']);
    _duracao = snapshotData['Duracao'] as String?;
    _duracaoCOR = snapshotData['DuracaoCOR'] as String?;
    _duracaoSize = castToType<double>(snapshotData['DuracaoSize']);
    _iDOkeySize = castToType<double>(snapshotData['iDOkeySize']);
    _isDefaultImage = snapshotData['IsDefaultImage'] as bool?;
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
  double? preNameSize,
  String? aluno,
  String? alunoCOR,
  double? alunoSize,
  String? preCurso,
  String? preCursoCOR,
  double? preCursoSize,
  String? curso,
  String? cursoCOR,
  double? cursoSize,
  String? preProf,
  String? preProfCOR,
  double? preProfSize,
  String? prof,
  String? profCOR,
  double? profSize,
  String? preData,
  String? preDataCOR,
  double? preDataSize,
  String? data,
  String? dataCOR,
  double? dataSize,
  String? preDuracao,
  String? preDuracaoCOR,
  double? preDuracaoSize,
  String? duracao,
  String? duracaoCOR,
  double? duracaoSize,
  double? iDOkeySize,
  bool? isDefaultImage,
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
      'Aluno': aluno,
      'AlunoCOR': alunoCOR,
      'AlunoSize': alunoSize,
      'PreCurso': preCurso,
      'PreCursoCOR': preCursoCOR,
      'PreCursoSize': preCursoSize,
      'Curso': curso,
      'CursoCOR': cursoCOR,
      'CursoSize': cursoSize,
      'PreProf': preProf,
      'PreProfCOR': preProfCOR,
      'PreProfSize': preProfSize,
      'Prof': prof,
      'ProfCOR': profCOR,
      'ProfSize': profSize,
      'PreData': preData,
      'PreDataCOR': preDataCOR,
      'PreDataSize': preDataSize,
      'Data': data,
      'DataCOR': dataCOR,
      'DataSize': dataSize,
      'PreDuracao': preDuracao,
      'PreDuracaoCOR': preDuracaoCOR,
      'PreDuracaoSize': preDuracaoSize,
      'Duracao': duracao,
      'DuracaoCOR': duracaoCOR,
      'DuracaoSize': duracaoSize,
      'iDOkeySize': iDOkeySize,
      'IsDefaultImage': isDefaultImage,
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
        e1?.preNameSize == e2?.preNameSize &&
        e1?.aluno == e2?.aluno &&
        e1?.alunoCOR == e2?.alunoCOR &&
        e1?.alunoSize == e2?.alunoSize &&
        e1?.preCurso == e2?.preCurso &&
        e1?.preCursoCOR == e2?.preCursoCOR &&
        e1?.preCursoSize == e2?.preCursoSize &&
        e1?.curso == e2?.curso &&
        e1?.cursoCOR == e2?.cursoCOR &&
        e1?.cursoSize == e2?.cursoSize &&
        e1?.preProf == e2?.preProf &&
        e1?.preProfCOR == e2?.preProfCOR &&
        e1?.preProfSize == e2?.preProfSize &&
        e1?.prof == e2?.prof &&
        e1?.profCOR == e2?.profCOR &&
        e1?.profSize == e2?.profSize &&
        e1?.preData == e2?.preData &&
        e1?.preDataCOR == e2?.preDataCOR &&
        e1?.preDataSize == e2?.preDataSize &&
        e1?.data == e2?.data &&
        e1?.dataCOR == e2?.dataCOR &&
        e1?.dataSize == e2?.dataSize &&
        e1?.preDuracao == e2?.preDuracao &&
        e1?.preDuracaoCOR == e2?.preDuracaoCOR &&
        e1?.preDuracaoSize == e2?.preDuracaoSize &&
        e1?.duracao == e2?.duracao &&
        e1?.duracaoCOR == e2?.duracaoCOR &&
        e1?.duracaoSize == e2?.duracaoSize &&
        e1?.iDOkeySize == e2?.iDOkeySize &&
        e1?.isDefaultImage == e2?.isDefaultImage;
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
        e?.preNameSize,
        e?.aluno,
        e?.alunoCOR,
        e?.alunoSize,
        e?.preCurso,
        e?.preCursoCOR,
        e?.preCursoSize,
        e?.curso,
        e?.cursoCOR,
        e?.cursoSize,
        e?.preProf,
        e?.preProfCOR,
        e?.preProfSize,
        e?.prof,
        e?.profCOR,
        e?.profSize,
        e?.preData,
        e?.preDataCOR,
        e?.preDataSize,
        e?.data,
        e?.dataCOR,
        e?.dataSize,
        e?.preDuracao,
        e?.preDuracaoCOR,
        e?.preDuracaoSize,
        e?.duracao,
        e?.duracaoCOR,
        e?.duracaoSize,
        e?.iDOkeySize,
        e?.isDefaultImage
      ]);

  @override
  bool isValidKey(Object? o) => o is CertificadoTemplateRecord;
}
