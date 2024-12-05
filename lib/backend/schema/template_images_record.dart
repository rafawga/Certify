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

  // "Png" field.
  String? _png;
  String get png => _png ?? '';
  bool hasPng() => _png != null;

  // "Index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "NameAlignment" field.
  String? _nameAlignment;
  String get nameAlignment => _nameAlignment ?? '';
  bool hasNameAlignment() => _nameAlignment != null;

  // "MainTextAlignment" field.
  String? _mainTextAlignment;
  String get mainTextAlignment => _mainTextAlignment ?? '';
  bool hasMainTextAlignment() => _mainTextAlignment != null;

  // "AlunoFontSizeCoefficient" field.
  double? _alunoFontSizeCoefficient;
  double get alunoFontSizeCoefficient => _alunoFontSizeCoefficient ?? 0.0;
  bool hasAlunoFontSizeCoefficient() => _alunoFontSizeCoefficient != null;

  // "MainTextFontSizeCoefficient" field.
  double? _mainTextFontSizeCoefficient;
  double get mainTextFontSizeCoefficient => _mainTextFontSizeCoefficient ?? 0.0;
  bool hasMainTextFontSizeCoefficient() => _mainTextFontSizeCoefficient != null;

  // "AlunoFontColor" field.
  String? _alunoFontColor;
  String get alunoFontColor => _alunoFontColor ?? '';
  bool hasAlunoFontColor() => _alunoFontColor != null;

  // "MainTextFontColor" field.
  String? _mainTextFontColor;
  String get mainTextFontColor => _mainTextFontColor ?? '';
  bool hasMainTextFontColor() => _mainTextFontColor != null;

  // "CodeFontColor" field.
  String? _codeFontColor;
  String get codeFontColor => _codeFontColor ?? '';
  bool hasCodeFontColor() => _codeFontColor != null;

  // "AlunoFontURL" field.
  String? _alunoFontURL;
  String get alunoFontURL => _alunoFontURL ?? '';
  bool hasAlunoFontURL() => _alunoFontURL != null;

  // "MainTextFontURL" field.
  String? _mainTextFontURL;
  String get mainTextFontURL => _mainTextFontURL ?? '';
  bool hasMainTextFontURL() => _mainTextFontURL != null;

  // "CodeFontURL" field.
  String? _codeFontURL;
  String get codeFontURL => _codeFontURL ?? '';
  bool hasCodeFontURL() => _codeFontURL != null;

  // "HasCustomColorDetails" field.
  bool? _hasCustomColorDetails;
  bool get hasCustomColorDetails => _hasCustomColorDetails ?? false;
  bool hasHasCustomColorDetails() => _hasCustomColorDetails != null;

  // "MainText" field.
  String? _mainText;
  String get mainText => _mainText ?? '';
  bool hasMainText() => _mainText != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _svg = snapshotData['Svg'] as String?;
    _png = snapshotData['Png'] as String?;
    _index = castToType<int>(snapshotData['Index']);
    _nameAlignment = snapshotData['NameAlignment'] as String?;
    _mainTextAlignment = snapshotData['MainTextAlignment'] as String?;
    _alunoFontSizeCoefficient =
        castToType<double>(snapshotData['AlunoFontSizeCoefficient']);
    _mainTextFontSizeCoefficient =
        castToType<double>(snapshotData['MainTextFontSizeCoefficient']);
    _alunoFontColor = snapshotData['AlunoFontColor'] as String?;
    _mainTextFontColor = snapshotData['MainTextFontColor'] as String?;
    _codeFontColor = snapshotData['CodeFontColor'] as String?;
    _alunoFontURL = snapshotData['AlunoFontURL'] as String?;
    _mainTextFontURL = snapshotData['MainTextFontURL'] as String?;
    _codeFontURL = snapshotData['CodeFontURL'] as String?;
    _hasCustomColorDetails = snapshotData['HasCustomColorDetails'] as bool?;
    _mainText = snapshotData['MainText'] as String?;
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
  String? png,
  int? index,
  String? nameAlignment,
  String? mainTextAlignment,
  double? alunoFontSizeCoefficient,
  double? mainTextFontSizeCoefficient,
  String? alunoFontColor,
  String? mainTextFontColor,
  String? codeFontColor,
  String? alunoFontURL,
  String? mainTextFontURL,
  String? codeFontURL,
  bool? hasCustomColorDetails,
  String? mainText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Svg': svg,
      'Png': png,
      'Index': index,
      'NameAlignment': nameAlignment,
      'MainTextAlignment': mainTextAlignment,
      'AlunoFontSizeCoefficient': alunoFontSizeCoefficient,
      'MainTextFontSizeCoefficient': mainTextFontSizeCoefficient,
      'AlunoFontColor': alunoFontColor,
      'MainTextFontColor': mainTextFontColor,
      'CodeFontColor': codeFontColor,
      'AlunoFontURL': alunoFontURL,
      'MainTextFontURL': mainTextFontURL,
      'CodeFontURL': codeFontURL,
      'HasCustomColorDetails': hasCustomColorDetails,
      'MainText': mainText,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateImagesRecordDocumentEquality
    implements Equality<TemplateImagesRecord> {
  const TemplateImagesRecordDocumentEquality();

  @override
  bool equals(TemplateImagesRecord? e1, TemplateImagesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.svg == e2?.svg &&
        e1?.png == e2?.png &&
        e1?.index == e2?.index &&
        e1?.nameAlignment == e2?.nameAlignment &&
        e1?.mainTextAlignment == e2?.mainTextAlignment &&
        e1?.alunoFontSizeCoefficient == e2?.alunoFontSizeCoefficient &&
        e1?.mainTextFontSizeCoefficient == e2?.mainTextFontSizeCoefficient &&
        e1?.alunoFontColor == e2?.alunoFontColor &&
        e1?.mainTextFontColor == e2?.mainTextFontColor &&
        e1?.codeFontColor == e2?.codeFontColor &&
        e1?.alunoFontURL == e2?.alunoFontURL &&
        e1?.mainTextFontURL == e2?.mainTextFontURL &&
        e1?.codeFontURL == e2?.codeFontURL &&
        e1?.hasCustomColorDetails == e2?.hasCustomColorDetails &&
        e1?.mainText == e2?.mainText;
  }

  @override
  int hash(TemplateImagesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.svg,
        e?.png,
        e?.index,
        e?.nameAlignment,
        e?.mainTextAlignment,
        e?.alunoFontSizeCoefficient,
        e?.mainTextFontSizeCoefficient,
        e?.alunoFontColor,
        e?.mainTextFontColor,
        e?.codeFontColor,
        e?.alunoFontURL,
        e?.mainTextFontURL,
        e?.codeFontURL,
        e?.hasCustomColorDetails,
        e?.mainText
      ]);

  @override
  bool isValidKey(Object? o) => o is TemplateImagesRecord;
}
