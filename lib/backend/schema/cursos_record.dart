import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CursosRecord extends FirestoreRecord {
  CursosRecord._(
    super.reference,
    super.data,
  ) {
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

  // "TemplateRef" field.
  DocumentReference? _templateRef;
  DocumentReference? get templateRef => _templateRef;
  bool hasTemplateRef() => _templateRef != null;

  // "courseInvite" field.
  CourseInviteStruct? _courseInvite;
  CourseInviteStruct get courseInvite => _courseInvite ?? CourseInviteStruct();
  bool hasCourseInvite() => _courseInvite != null;

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
    _templateRef = snapshotData['TemplateRef'] as DocumentReference?;
    _courseInvite =
        CourseInviteStruct.maybeFromMap(snapshotData['courseInvite']);
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
  DocumentReference? templateRef,
  CourseInviteStruct? courseInvite,
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
      'TemplateRef': templateRef,
      'courseInvite': CourseInviteStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "courseInvite" field.
  addCourseInviteStructData(firestoreData, courseInvite, 'courseInvite');

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
        e1?.templateRef == e2?.templateRef &&
        e1?.courseInvite == e2?.courseInvite;
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
        e?.templateRef,
        e?.courseInvite
      ]);

  @override
  bool isValidKey(Object? o) => o is CursosRecord;
}
