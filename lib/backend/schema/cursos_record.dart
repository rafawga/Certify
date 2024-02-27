import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CursosRecord extends FirestoreRecord {
  CursosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "instructorName" field.
  String? _instructorName;
  String get instructorName => _instructorName ?? '';
  bool hasInstructorName() => _instructorName != null;

  // "productorId" field.
  DocumentReference? _productorId;
  DocumentReference? get productorId => _productorId;
  bool hasProductorId() => _productorId != null;

  // "duracao" field.
  int? _duracao;
  int get duracao => _duracao ?? 0;
  bool hasDuracao() => _duracao != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "EditAt" field.
  DateTime? _editAt;
  DateTime? get editAt => _editAt;
  bool hasEditAt() => _editAt != null;

  // "UserList" field.
  List<DocumentReference>? _userList;
  List<DocumentReference> get userList => _userList ?? const [];
  bool hasUserList() => _userList != null;

  // "ExcludeUserList" field.
  List<DocumentReference>? _excludeUserList;
  List<DocumentReference> get excludeUserList => _excludeUserList ?? const [];
  bool hasExcludeUserList() => _excludeUserList != null;

  // "PhotoURL" field.
  String? _photoURL;
  String get photoURL => _photoURL ?? '';
  bool hasPhotoURL() => _photoURL != null;

  // "UsersLimit" field.
  int? _usersLimit;
  int get usersLimit => _usersLimit ?? 0;
  bool hasUsersLimit() => _usersLimit != null;

  // "HasUserLimit" field.
  bool? _hasUserLimit;
  bool get hasUserLimit => _hasUserLimit ?? false;
  bool hasHasUserLimit() => _hasUserLimit != null;

  // "PreNameText" field.
  String? _preNameText;
  String get preNameText => _preNameText ?? '';
  bool hasPreNameText() => _preNameText != null;

  // "PreProfText" field.
  String? _preProfText;
  String get preProfText => _preProfText ?? '';
  bool hasPreProfText() => _preProfText != null;

  // "PreDataText" field.
  String? _preDataText;
  String get preDataText => _preDataText ?? '';
  bool hasPreDataText() => _preDataText != null;

  // "PreDuracaoText" field.
  String? _preDuracaoText;
  String get preDuracaoText => _preDuracaoText ?? '';
  bool hasPreDuracaoText() => _preDuracaoText != null;

  // "PreCouseText" field.
  String? _preCouseText;
  String get preCouseText => _preCouseText ?? '';
  bool hasPreCouseText() => _preCouseText != null;

  // "PreNameTextColor" field.
  String? _preNameTextColor;
  String get preNameTextColor => _preNameTextColor ?? '';
  bool hasPreNameTextColor() => _preNameTextColor != null;

  // "PreProfTextColor" field.
  String? _preProfTextColor;
  String get preProfTextColor => _preProfTextColor ?? '';
  bool hasPreProfTextColor() => _preProfTextColor != null;

  // "PreDataTextColor" field.
  String? _preDataTextColor;
  String get preDataTextColor => _preDataTextColor ?? '';
  bool hasPreDataTextColor() => _preDataTextColor != null;

  // "PreDuracaoColor" field.
  String? _preDuracaoColor;
  String get preDuracaoColor => _preDuracaoColor ?? '';
  bool hasPreDuracaoColor() => _preDuracaoColor != null;

  // "NameAlunoColor" field.
  String? _nameAlunoColor;
  String get nameAlunoColor => _nameAlunoColor ?? '';
  bool hasNameAlunoColor() => _nameAlunoColor != null;

  // "CourseColor" field.
  String? _courseColor;
  String get courseColor => _courseColor ?? '';
  bool hasCourseColor() => _courseColor != null;

  // "ProfColor" field.
  String? _profColor;
  String get profColor => _profColor ?? '';
  bool hasProfColor() => _profColor != null;

  // "DataColor" field.
  String? _dataColor;
  String get dataColor => _dataColor ?? '';
  bool hasDataColor() => _dataColor != null;

  // "DuracaoColor" field.
  String? _duracaoColor;
  String get duracaoColor => _duracaoColor ?? '';
  bool hasDuracaoColor() => _duracaoColor != null;

  // "PreCourseColor" field.
  String? _preCourseColor;
  String get preCourseColor => _preCourseColor ?? '';
  bool hasPreCourseColor() => _preCourseColor != null;

  // "FotoCertificado" field.
  String? _fotoCertificado;
  String get fotoCertificado => _fotoCertificado ?? '';
  bool hasFotoCertificado() => _fotoCertificado != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _instructorName = snapshotData['instructorName'] as String?;
    _productorId = snapshotData['productorId'] as DocumentReference?;
    _duracao = castToType<int>(snapshotData['duracao']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _editAt = snapshotData['EditAt'] as DateTime?;
    _userList = getDataList(snapshotData['UserList']);
    _excludeUserList = getDataList(snapshotData['ExcludeUserList']);
    _photoURL = snapshotData['PhotoURL'] as String?;
    _usersLimit = castToType<int>(snapshotData['UsersLimit']);
    _hasUserLimit = snapshotData['HasUserLimit'] as bool?;
    _preNameText = snapshotData['PreNameText'] as String?;
    _preProfText = snapshotData['PreProfText'] as String?;
    _preDataText = snapshotData['PreDataText'] as String?;
    _preDuracaoText = snapshotData['PreDuracaoText'] as String?;
    _preCouseText = snapshotData['PreCouseText'] as String?;
    _preNameTextColor = snapshotData['PreNameTextColor'] as String?;
    _preProfTextColor = snapshotData['PreProfTextColor'] as String?;
    _preDataTextColor = snapshotData['PreDataTextColor'] as String?;
    _preDuracaoColor = snapshotData['PreDuracaoColor'] as String?;
    _nameAlunoColor = snapshotData['NameAlunoColor'] as String?;
    _courseColor = snapshotData['CourseColor'] as String?;
    _profColor = snapshotData['ProfColor'] as String?;
    _dataColor = snapshotData['DataColor'] as String?;
    _duracaoColor = snapshotData['DuracaoColor'] as String?;
    _preCourseColor = snapshotData['PreCourseColor'] as String?;
    _fotoCertificado = snapshotData['FotoCertificado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cursos');

  static Stream<CursosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CursosRecord.fromSnapshot(s));

  static Future<CursosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CursosRecord.fromSnapshot(s));

  static CursosRecord fromSnapshot(DocumentSnapshot snapshot) => CursosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CursosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CursosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CursosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CursosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCursosRecordData({
  String? name,
  String? description,
  String? instructorName,
  DocumentReference? productorId,
  int? duracao,
  DateTime? createdAt,
  DateTime? editAt,
  String? photoURL,
  int? usersLimit,
  bool? hasUserLimit,
  String? preNameText,
  String? preProfText,
  String? preDataText,
  String? preDuracaoText,
  String? preCouseText,
  String? preNameTextColor,
  String? preProfTextColor,
  String? preDataTextColor,
  String? preDuracaoColor,
  String? nameAlunoColor,
  String? courseColor,
  String? profColor,
  String? dataColor,
  String? duracaoColor,
  String? preCourseColor,
  String? fotoCertificado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'instructorName': instructorName,
      'productorId': productorId,
      'duracao': duracao,
      'createdAt': createdAt,
      'EditAt': editAt,
      'PhotoURL': photoURL,
      'UsersLimit': usersLimit,
      'HasUserLimit': hasUserLimit,
      'PreNameText': preNameText,
      'PreProfText': preProfText,
      'PreDataText': preDataText,
      'PreDuracaoText': preDuracaoText,
      'PreCouseText': preCouseText,
      'PreNameTextColor': preNameTextColor,
      'PreProfTextColor': preProfTextColor,
      'PreDataTextColor': preDataTextColor,
      'PreDuracaoColor': preDuracaoColor,
      'NameAlunoColor': nameAlunoColor,
      'CourseColor': courseColor,
      'ProfColor': profColor,
      'DataColor': dataColor,
      'DuracaoColor': duracaoColor,
      'PreCourseColor': preCourseColor,
      'FotoCertificado': fotoCertificado,
    }.withoutNulls,
  );

  return firestoreData;
}

class CursosRecordDocumentEquality implements Equality<CursosRecord> {
  const CursosRecordDocumentEquality();

  @override
  bool equals(CursosRecord? e1, CursosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.instructorName == e2?.instructorName &&
        e1?.productorId == e2?.productorId &&
        e1?.duracao == e2?.duracao &&
        e1?.createdAt == e2?.createdAt &&
        e1?.editAt == e2?.editAt &&
        listEquality.equals(e1?.userList, e2?.userList) &&
        listEquality.equals(e1?.excludeUserList, e2?.excludeUserList) &&
        e1?.photoURL == e2?.photoURL &&
        e1?.usersLimit == e2?.usersLimit &&
        e1?.hasUserLimit == e2?.hasUserLimit &&
        e1?.preNameText == e2?.preNameText &&
        e1?.preProfText == e2?.preProfText &&
        e1?.preDataText == e2?.preDataText &&
        e1?.preDuracaoText == e2?.preDuracaoText &&
        e1?.preCouseText == e2?.preCouseText &&
        e1?.preNameTextColor == e2?.preNameTextColor &&
        e1?.preProfTextColor == e2?.preProfTextColor &&
        e1?.preDataTextColor == e2?.preDataTextColor &&
        e1?.preDuracaoColor == e2?.preDuracaoColor &&
        e1?.nameAlunoColor == e2?.nameAlunoColor &&
        e1?.courseColor == e2?.courseColor &&
        e1?.profColor == e2?.profColor &&
        e1?.dataColor == e2?.dataColor &&
        e1?.duracaoColor == e2?.duracaoColor &&
        e1?.preCourseColor == e2?.preCourseColor &&
        e1?.fotoCertificado == e2?.fotoCertificado;
  }

  @override
  int hash(CursosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.instructorName,
        e?.productorId,
        e?.duracao,
        e?.createdAt,
        e?.editAt,
        e?.userList,
        e?.excludeUserList,
        e?.photoURL,
        e?.usersLimit,
        e?.hasUserLimit,
        e?.preNameText,
        e?.preProfText,
        e?.preDataText,
        e?.preDuracaoText,
        e?.preCouseText,
        e?.preNameTextColor,
        e?.preProfTextColor,
        e?.preDataTextColor,
        e?.preDuracaoColor,
        e?.nameAlunoColor,
        e?.courseColor,
        e?.profColor,
        e?.dataColor,
        e?.duracaoColor,
        e?.preCourseColor,
        e?.fotoCertificado
      ]);

  @override
  bool isValidKey(Object? o) => o is CursosRecord;
}
