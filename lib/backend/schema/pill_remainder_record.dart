import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PillRemainderRecord extends FirestoreRecord {
  PillRemainderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "frequency_perday" field.
  String? _frequencyPerday;
  String get frequencyPerday => _frequencyPerday ?? '';
  bool hasFrequencyPerday() => _frequencyPerday != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _time = snapshotData['time'] as String?;
    _frequencyPerday = snapshotData['frequency_perday'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pillRemainder');

  static Stream<PillRemainderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PillRemainderRecord.fromSnapshot(s));

  static Future<PillRemainderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PillRemainderRecord.fromSnapshot(s));

  static PillRemainderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PillRemainderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PillRemainderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PillRemainderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PillRemainderRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPillRemainderRecordData({
  String? name,
  String? time,
  String? frequencyPerday,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'time': time,
      'frequency_perday': frequencyPerday,
    }.withoutNulls,
  );

  return firestoreData;
}
