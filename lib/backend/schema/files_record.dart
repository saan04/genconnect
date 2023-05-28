import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilesRecord extends FirestoreRecord {
  FilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name_of_file" field.
  String? _nameOfFile;
  String get nameOfFile => _nameOfFile ?? '';
  bool hasNameOfFile() => _nameOfFile != null;

  void _initializeFields() {
    _nameOfFile = snapshotData['Name_of_file'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('files');

  static Stream<FilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilesRecord.fromSnapshot(s));

  static Future<FilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilesRecord.fromSnapshot(s));

  static FilesRecord fromSnapshot(DocumentSnapshot snapshot) => FilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createFilesRecordData({
  String? nameOfFile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name_of_file': nameOfFile,
    }.withoutNulls,
  );

  return firestoreData;
}
