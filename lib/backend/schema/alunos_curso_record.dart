import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AlunosCursoRecord extends FirestoreRecord {
  AlunosCursoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cursoID" field.
  DocumentReference? _cursoID;
  DocumentReference? get cursoID => _cursoID;
  bool hasCursoID() => _cursoID != null;

  // "isDone" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  bool hasIsDone() => _isDone != null;

  // "dataInscricao" field.
  DateTime? _dataInscricao;
  DateTime? get dataInscricao => _dataInscricao;
  bool hasDataInscricao() => _dataInscricao != null;

  // "dataModificacao" field.
  DateTime? _dataModificacao;
  DateTime? get dataModificacao => _dataModificacao;
  bool hasDataModificacao() => _dataModificacao != null;

  // "alunoUser" field.
  DocumentReference? _alunoUser;
  DocumentReference? get alunoUser => _alunoUser;
  bool hasAlunoUser() => _alunoUser != null;

  // "hash" field.
  String? _hash;
  String get hash => _hash ?? '';
  bool hasHash() => _hash != null;

  // "isValid" field.
  bool? _isValid;
  bool get isValid => _isValid ?? false;
  bool hasIsValid() => _isValid != null;

  // "professorID" field.
  DocumentReference? _professorID;
  DocumentReference? get professorID => _professorID;
  bool hasProfessorID() => _professorID != null;

  void _initializeFields() {
    _cursoID = snapshotData['cursoID'] as DocumentReference?;
    _isDone = snapshotData['isDone'] as bool?;
    _dataInscricao = snapshotData['dataInscricao'] as DateTime?;
    _dataModificacao = snapshotData['dataModificacao'] as DateTime?;
    _alunoUser = snapshotData['alunoUser'] as DocumentReference?;
    _hash = snapshotData['hash'] as String?;
    _isValid = snapshotData['isValid'] as bool?;
    _professorID = snapshotData['professorID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alunosCurso');

  static Stream<AlunosCursoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlunosCursoRecord.fromSnapshot(s));

  static Future<AlunosCursoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlunosCursoRecord.fromSnapshot(s));

  static AlunosCursoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlunosCursoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlunosCursoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlunosCursoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlunosCursoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlunosCursoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlunosCursoRecordData({
  DocumentReference? cursoID,
  bool? isDone,
  DateTime? dataInscricao,
  DateTime? dataModificacao,
  DocumentReference? alunoUser,
  String? hash,
  bool? isValid,
  DocumentReference? professorID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cursoID': cursoID,
      'isDone': isDone,
      'dataInscricao': dataInscricao,
      'dataModificacao': dataModificacao,
      'alunoUser': alunoUser,
      'hash': hash,
      'isValid': isValid,
      'professorID': professorID,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlunosCursoRecordDocumentEquality implements Equality<AlunosCursoRecord> {
  const AlunosCursoRecordDocumentEquality();

  @override
  bool equals(AlunosCursoRecord? e1, AlunosCursoRecord? e2) {
    return e1?.cursoID == e2?.cursoID &&
        e1?.isDone == e2?.isDone &&
        e1?.dataInscricao == e2?.dataInscricao &&
        e1?.dataModificacao == e2?.dataModificacao &&
        e1?.alunoUser == e2?.alunoUser &&
        e1?.hash == e2?.hash &&
        e1?.isValid == e2?.isValid &&
        e1?.professorID == e2?.professorID;
  }

  @override
  int hash(AlunosCursoRecord? e) => const ListEquality().hash([
        e?.cursoID,
        e?.isDone,
        e?.dataInscricao,
        e?.dataModificacao,
        e?.alunoUser,
        e?.hash,
        e?.isValid,
        e?.professorID
      ]);

  @override
  bool isValidKey(Object? o) => o is AlunosCursoRecord;
}
