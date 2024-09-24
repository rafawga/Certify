import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateImagesRecord extends FirestoreRecord {
  TemplateImagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Svg" field.
  String? _svg;
  String get svg => _svg ?? '';
  bool hasSvg() => _svg != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _svg = snapshotData['Svg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TemplateImages');

  static Stream<TemplateImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateImagesRecord.fromSnapshot(s));

  static Future<TemplateImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemplateImagesRecord.fromSnapshot(s));

  static TemplateImagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateImagesRecordData({
  String? name,
  String? svg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Svg': svg,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateImagesRecordDocumentEquality
    implements Equality<TemplateImagesRecord> {
  const TemplateImagesRecordDocumentEquality();

  @override
  bool equals(TemplateImagesRecord? e1, TemplateImagesRecord? e2) {
    return e1?.name == e2?.name && e1?.svg == e2?.svg;
  }

  @override
  int hash(TemplateImagesRecord? e) =>
      const ListEquality().hash([e?.name, e?.svg]);

  @override
  bool isValidKey(Object? o) => o is TemplateImagesRecord;
}
