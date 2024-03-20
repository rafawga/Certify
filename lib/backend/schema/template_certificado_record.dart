import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateCertificadoRecord extends FirestoreRecord {
  TemplateCertificadoRecord._(
    super.reference,
    super.data,
  ) {
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

  // "CertificadoSize" field.
  double? _certificadoSize;
  double get certificadoSize => _certificadoSize ?? 0.0;
  bool hasCertificadoSize() => _certificadoSize != null;

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

  // "PreNameSIZE" field.
  double? _preNameSIZE;
  double get preNameSIZE => _preNameSIZE ?? 0.0;
  bool hasPreNameSIZE() => _preNameSIZE != null;

  // "Aluno" field.
  String? _aluno;
  String get aluno => _aluno ?? '';
  bool hasAluno() => _aluno != null;

  // "AlunoCOR" field.
  String? _alunoCOR;
  String get alunoCOR => _alunoCOR ?? '';
  bool hasAlunoCOR() => _alunoCOR != null;

  // "AlunoSIZE" field.
  double? _alunoSIZE;
  double get alunoSIZE => _alunoSIZE ?? 0.0;
  bool hasAlunoSIZE() => _alunoSIZE != null;

  // "PreCurso" field.
  String? _preCurso;
  String get preCurso => _preCurso ?? '';
  bool hasPreCurso() => _preCurso != null;

  // "PreCursoCOR" field.
  String? _preCursoCOR;
  String get preCursoCOR => _preCursoCOR ?? '';
  bool hasPreCursoCOR() => _preCursoCOR != null;

  // "PreCursoSIZE" field.
  double? _preCursoSIZE;
  double get preCursoSIZE => _preCursoSIZE ?? 0.0;
  bool hasPreCursoSIZE() => _preCursoSIZE != null;

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

  // "PreProfSIZE" field.
  double? _preProfSIZE;
  double get preProfSIZE => _preProfSIZE ?? 0.0;
  bool hasPreProfSIZE() => _preProfSIZE != null;

  // "Prof" field.
  String? _prof;
  String get prof => _prof ?? '';
  bool hasProf() => _prof != null;

  // "ProfCOR" field.
  String? _profCOR;
  String get profCOR => _profCOR ?? '';
  bool hasProfCOR() => _profCOR != null;

  // "ProfSIZE" field.
  double? _profSIZE;
  double get profSIZE => _profSIZE ?? 0.0;
  bool hasProfSIZE() => _profSIZE != null;

  // "PreDate" field.
  String? _preDate;
  String get preDate => _preDate ?? '';
  bool hasPreDate() => _preDate != null;

  // "PreDateCOR" field.
  String? _preDateCOR;
  String get preDateCOR => _preDateCOR ?? '';
  bool hasPreDateCOR() => _preDateCOR != null;

  // "PreDateSIZE" field.
  double? _preDateSIZE;
  double get preDateSIZE => _preDateSIZE ?? 0.0;
  bool hasPreDateSIZE() => _preDateSIZE != null;

  // "Data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "DataCOR" field.
  String? _dataCOR;
  String get dataCOR => _dataCOR ?? '';
  bool hasDataCOR() => _dataCOR != null;

  // "DataSIZE" field.
  double? _dataSIZE;
  double get dataSIZE => _dataSIZE ?? 0.0;
  bool hasDataSIZE() => _dataSIZE != null;

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

  // "DuracaoSIZE" field.
  double? _duracaoSIZE;
  double get duracaoSIZE => _duracaoSIZE ?? 0.0;
  bool hasDuracaoSIZE() => _duracaoSIZE != null;

  // "IDokeySize" field.
  double? _iDokeySize;
  double get iDokeySize => _iDokeySize ?? 0.0;
  bool hasIDokeySize() => _iDokeySize != null;

  // "isDefaultImage" field.
  bool? _isDefaultImage;
  bool get isDefaultImage => _isDefaultImage ?? false;
  bool hasIsDefaultImage() => _isDefaultImage != null;

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "ShowIDokey" field.
  bool? _showIDokey;
  bool get showIDokey => _showIDokey ?? false;
  bool hasShowIDokey() => _showIDokey != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _certificado = snapshotData['Certificado'] as String?;
    _certificadoCOR = snapshotData['CertificadoCOR'] as String?;
    _certificadoSize = castToType<double>(snapshotData['CertificadoSize']);
    _templateName = snapshotData['TemplateName'] as String?;
    _preName = snapshotData['PreName'] as String?;
    _preNameCOR = snapshotData['PreNameCOR'] as String?;
    _preNameSIZE = castToType<double>(snapshotData['PreNameSIZE']);
    _aluno = snapshotData['Aluno'] as String?;
    _alunoCOR = snapshotData['AlunoCOR'] as String?;
    _alunoSIZE = castToType<double>(snapshotData['AlunoSIZE']);
    _preCurso = snapshotData['PreCurso'] as String?;
    _preCursoCOR = snapshotData['PreCursoCOR'] as String?;
    _preCursoSIZE = castToType<double>(snapshotData['PreCursoSIZE']);
    _curso = snapshotData['Curso'] as String?;
    _cursoCOR = snapshotData['CursoCOR'] as String?;
    _cursoSize = castToType<double>(snapshotData['CursoSize']);
    _preProf = snapshotData['PreProf'] as String?;
    _preProfCOR = snapshotData['PreProfCOR'] as String?;
    _preProfSIZE = castToType<double>(snapshotData['PreProfSIZE']);
    _prof = snapshotData['Prof'] as String?;
    _profCOR = snapshotData['ProfCOR'] as String?;
    _profSIZE = castToType<double>(snapshotData['ProfSIZE']);
    _preDate = snapshotData['PreDate'] as String?;
    _preDateCOR = snapshotData['PreDateCOR'] as String?;
    _preDateSIZE = castToType<double>(snapshotData['PreDateSIZE']);
    _data = snapshotData['Data'] as String?;
    _dataCOR = snapshotData['DataCOR'] as String?;
    _dataSIZE = castToType<double>(snapshotData['DataSIZE']);
    _preDuracao = snapshotData['PreDuracao'] as String?;
    _preDuracaoCOR = snapshotData['PreDuracaoCOR'] as String?;
    _preDuracaoSize = castToType<double>(snapshotData['PreDuracaoSize']);
    _duracao = snapshotData['Duracao'] as String?;
    _duracaoCOR = snapshotData['DuracaoCOR'] as String?;
    _duracaoSIZE = castToType<double>(snapshotData['DuracaoSIZE']);
    _iDokeySize = castToType<double>(snapshotData['IDokeySize']);
    _isDefaultImage = snapshotData['isDefaultImage'] as bool?;
    _userID = snapshotData['UserID'] as DocumentReference?;
    _showIDokey = snapshotData['ShowIDokey'] as bool?;
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TemplateCertificado');

  static Stream<TemplateCertificadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateCertificadoRecord.fromSnapshot(s));

  static Future<TemplateCertificadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TemplateCertificadoRecord.fromSnapshot(s));

  static TemplateCertificadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateCertificadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateCertificadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateCertificadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateCertificadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateCertificadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateCertificadoRecordData({
  String? certificado,
  String? certificadoCOR,
  double? certificadoSize,
  String? templateName,
  String? preName,
  String? preNameCOR,
  double? preNameSIZE,
  String? aluno,
  String? alunoCOR,
  double? alunoSIZE,
  String? preCurso,
  String? preCursoCOR,
  double? preCursoSIZE,
  String? curso,
  String? cursoCOR,
  double? cursoSize,
  String? preProf,
  String? preProfCOR,
  double? preProfSIZE,
  String? prof,
  String? profCOR,
  double? profSIZE,
  String? preDate,
  String? preDateCOR,
  double? preDateSIZE,
  String? data,
  String? dataCOR,
  double? dataSIZE,
  String? preDuracao,
  String? preDuracaoCOR,
  double? preDuracaoSize,
  String? duracao,
  String? duracaoCOR,
  double? duracaoSIZE,
  double? iDokeySize,
  bool? isDefaultImage,
  DocumentReference? userID,
  bool? showIDokey,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Certificado': certificado,
      'CertificadoCOR': certificadoCOR,
      'CertificadoSize': certificadoSize,
      'TemplateName': templateName,
      'PreName': preName,
      'PreNameCOR': preNameCOR,
      'PreNameSIZE': preNameSIZE,
      'Aluno': aluno,
      'AlunoCOR': alunoCOR,
      'AlunoSIZE': alunoSIZE,
      'PreCurso': preCurso,
      'PreCursoCOR': preCursoCOR,
      'PreCursoSIZE': preCursoSIZE,
      'Curso': curso,
      'CursoCOR': cursoCOR,
      'CursoSize': cursoSize,
      'PreProf': preProf,
      'PreProfCOR': preProfCOR,
      'PreProfSIZE': preProfSIZE,
      'Prof': prof,
      'ProfCOR': profCOR,
      'ProfSIZE': profSIZE,
      'PreDate': preDate,
      'PreDateCOR': preDateCOR,
      'PreDateSIZE': preDateSIZE,
      'Data': data,
      'DataCOR': dataCOR,
      'DataSIZE': dataSIZE,
      'PreDuracao': preDuracao,
      'PreDuracaoCOR': preDuracaoCOR,
      'PreDuracaoSize': preDuracaoSize,
      'Duracao': duracao,
      'DuracaoCOR': duracaoCOR,
      'DuracaoSIZE': duracaoSIZE,
      'IDokeySize': iDokeySize,
      'isDefaultImage': isDefaultImage,
      'UserID': userID,
      'ShowIDokey': showIDokey,
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateCertificadoRecordDocumentEquality
    implements Equality<TemplateCertificadoRecord> {
  const TemplateCertificadoRecordDocumentEquality();

  @override
  bool equals(TemplateCertificadoRecord? e1, TemplateCertificadoRecord? e2) {
    return e1?.certificado == e2?.certificado &&
        e1?.certificadoCOR == e2?.certificadoCOR &&
        e1?.certificadoSize == e2?.certificadoSize &&
        e1?.templateName == e2?.templateName &&
        e1?.preName == e2?.preName &&
        e1?.preNameCOR == e2?.preNameCOR &&
        e1?.preNameSIZE == e2?.preNameSIZE &&
        e1?.aluno == e2?.aluno &&
        e1?.alunoCOR == e2?.alunoCOR &&
        e1?.alunoSIZE == e2?.alunoSIZE &&
        e1?.preCurso == e2?.preCurso &&
        e1?.preCursoCOR == e2?.preCursoCOR &&
        e1?.preCursoSIZE == e2?.preCursoSIZE &&
        e1?.curso == e2?.curso &&
        e1?.cursoCOR == e2?.cursoCOR &&
        e1?.cursoSize == e2?.cursoSize &&
        e1?.preProf == e2?.preProf &&
        e1?.preProfCOR == e2?.preProfCOR &&
        e1?.preProfSIZE == e2?.preProfSIZE &&
        e1?.prof == e2?.prof &&
        e1?.profCOR == e2?.profCOR &&
        e1?.profSIZE == e2?.profSIZE &&
        e1?.preDate == e2?.preDate &&
        e1?.preDateCOR == e2?.preDateCOR &&
        e1?.preDateSIZE == e2?.preDateSIZE &&
        e1?.data == e2?.data &&
        e1?.dataCOR == e2?.dataCOR &&
        e1?.dataSIZE == e2?.dataSIZE &&
        e1?.preDuracao == e2?.preDuracao &&
        e1?.preDuracaoCOR == e2?.preDuracaoCOR &&
        e1?.preDuracaoSize == e2?.preDuracaoSize &&
        e1?.duracao == e2?.duracao &&
        e1?.duracaoCOR == e2?.duracaoCOR &&
        e1?.duracaoSIZE == e2?.duracaoSIZE &&
        e1?.iDokeySize == e2?.iDokeySize &&
        e1?.isDefaultImage == e2?.isDefaultImage &&
        e1?.userID == e2?.userID &&
        e1?.showIDokey == e2?.showIDokey &&
        e1?.image == e2?.image;
  }

  @override
  int hash(TemplateCertificadoRecord? e) => const ListEquality().hash([
        e?.certificado,
        e?.certificadoCOR,
        e?.certificadoSize,
        e?.templateName,
        e?.preName,
        e?.preNameCOR,
        e?.preNameSIZE,
        e?.aluno,
        e?.alunoCOR,
        e?.alunoSIZE,
        e?.preCurso,
        e?.preCursoCOR,
        e?.preCursoSIZE,
        e?.curso,
        e?.cursoCOR,
        e?.cursoSize,
        e?.preProf,
        e?.preProfCOR,
        e?.preProfSIZE,
        e?.prof,
        e?.profCOR,
        e?.profSIZE,
        e?.preDate,
        e?.preDateCOR,
        e?.preDateSIZE,
        e?.data,
        e?.dataCOR,
        e?.dataSIZE,
        e?.preDuracao,
        e?.preDuracaoCOR,
        e?.preDuracaoSize,
        e?.duracao,
        e?.duracaoCOR,
        e?.duracaoSIZE,
        e?.iDokeySize,
        e?.isDefaultImage,
        e?.userID,
        e?.showIDokey,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is TemplateCertificadoRecord;
}
