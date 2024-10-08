import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "CertificateName" field.
  String? _certificateName;
  String get certificateName => _certificateName ?? '';
  bool hasCertificateName() => _certificateName != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "CoursesQnt" field.
  int? _coursesQnt;
  int get coursesQnt => _coursesQnt ?? 0;
  bool hasCoursesQnt() => _coursesQnt != null;

  // "AlunosQnt" field.
  int? _alunosQnt;
  int get alunosQnt => _alunosQnt ?? 0;
  bool hasAlunosQnt() => _alunosQnt != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "completedRegistration" field.
  bool? _completedRegistration;
  bool get completedRegistration => _completedRegistration ?? false;
  bool hasCompletedRegistration() => _completedRegistration != null;

  // "limits" field.
  LimitsStruct? _limits;
  LimitsStruct get limits => _limits ?? LimitsStruct();
  bool hasLimits() => _limits != null;

  // "current_plan" field.
  UserPlanStruct? _currentPlan;
  UserPlanStruct get currentPlan => _currentPlan ?? UserPlanStruct();
  bool hasCurrentPlan() => _currentPlan != null;

  // "acces_management" field.
  AccessManagementStruct? _accesManagement;
  AccessManagementStruct get accesManagement =>
      _accesManagement ?? AccessManagementStruct();
  bool hasAccesManagement() => _accesManagement != null;

  // "ProductorMode" field.
  bool? _productorMode;
  bool get productorMode => _productorMode ?? false;
  bool hasProductorMode() => _productorMode != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _lastName = snapshotData['last_name'] as String?;
    _certificateName = snapshotData['CertificateName'] as String?;
    _name = snapshotData['name'] as String?;
    _coursesQnt = castToType<int>(snapshotData['CoursesQnt']);
    _alunosQnt = castToType<int>(snapshotData['AlunosQnt']);
    _phoneNumber = snapshotData['phone_number'] as String?;
    _completedRegistration = snapshotData['completedRegistration'] as bool?;
    _limits = LimitsStruct.maybeFromMap(snapshotData['limits']);
    _currentPlan = UserPlanStruct.maybeFromMap(snapshotData['current_plan']);
    _accesManagement =
        AccessManagementStruct.maybeFromMap(snapshotData['acces_management']);
    _productorMode = snapshotData['ProductorMode'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? lastName,
  String? certificateName,
  String? name,
  int? coursesQnt,
  int? alunosQnt,
  String? phoneNumber,
  bool? completedRegistration,
  LimitsStruct? limits,
  UserPlanStruct? currentPlan,
  AccessManagementStruct? accesManagement,
  bool? productorMode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'last_name': lastName,
      'CertificateName': certificateName,
      'name': name,
      'CoursesQnt': coursesQnt,
      'AlunosQnt': alunosQnt,
      'phone_number': phoneNumber,
      'completedRegistration': completedRegistration,
      'limits': LimitsStruct().toMap(),
      'current_plan': UserPlanStruct().toMap(),
      'acces_management': AccessManagementStruct().toMap(),
      'ProductorMode': productorMode,
    }.withoutNulls,
  );

  // Handle nested data for "limits" field.
  addLimitsStructData(firestoreData, limits, 'limits');

  // Handle nested data for "current_plan" field.
  addUserPlanStructData(firestoreData, currentPlan, 'current_plan');

  // Handle nested data for "acces_management" field.
  addAccessManagementStructData(
      firestoreData, accesManagement, 'acces_management');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.lastName == e2?.lastName &&
        e1?.certificateName == e2?.certificateName &&
        e1?.name == e2?.name &&
        e1?.coursesQnt == e2?.coursesQnt &&
        e1?.alunosQnt == e2?.alunosQnt &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.completedRegistration == e2?.completedRegistration &&
        e1?.limits == e2?.limits &&
        e1?.currentPlan == e2?.currentPlan &&
        e1?.accesManagement == e2?.accesManagement &&
        e1?.productorMode == e2?.productorMode;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.lastName,
        e?.certificateName,
        e?.name,
        e?.coursesQnt,
        e?.alunosQnt,
        e?.phoneNumber,
        e?.completedRegistration,
        e?.limits,
        e?.currentPlan,
        e?.accesManagement,
        e?.productorMode
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
