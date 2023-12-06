import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MarquetextRecord extends FirestoreRecord {
  MarquetextRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "runingtext" field.
  String? _runingtext;
  String get runingtext => _runingtext ?? '';
  bool hasRuningtext() => _runingtext != null;

  void _initializeFields() {
    _runingtext = snapshotData['runingtext'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marquetext');

  static Stream<MarquetextRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarquetextRecord.fromSnapshot(s));

  static Future<MarquetextRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarquetextRecord.fromSnapshot(s));

  static MarquetextRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MarquetextRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarquetextRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarquetextRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarquetextRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarquetextRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarquetextRecordData({
  String? runingtext,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'runingtext': runingtext,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarquetextRecordDocumentEquality implements Equality<MarquetextRecord> {
  const MarquetextRecordDocumentEquality();

  @override
  bool equals(MarquetextRecord? e1, MarquetextRecord? e2) {
    return e1?.runingtext == e2?.runingtext;
  }

  @override
  int hash(MarquetextRecord? e) => const ListEquality().hash([e?.runingtext]);

  @override
  bool isValidKey(Object? o) => o is MarquetextRecord;
}
