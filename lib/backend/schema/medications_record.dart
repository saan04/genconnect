import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationsRecord extends FirestoreRecord {
  MedicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name_of_medicine" field.
  String? _nameOfMedicine;
  String get nameOfMedicine => _nameOfMedicine ?? '';
  bool hasNameOfMedicine() => _nameOfMedicine != null;

  // "Days_to_Take" field.
  List<String>? _daysToTake;
  List<String> get daysToTake => _daysToTake ?? const [];
  bool hasDaysToTake() => _daysToTake != null;

  // "Time_tobe_taken" field.
  List<DateTime>? _timeTobeTaken;
  List<DateTime> get timeTobeTaken => _timeTobeTaken ?? const [];
  bool hasTimeTobeTaken() => _timeTobeTaken != null;

  // "Count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _nameOfMedicine = snapshotData['Name_of_medicine'] as String?;
    _daysToTake = getDataList(snapshotData['Days_to_Take']);
    _timeTobeTaken = getDataList(snapshotData['Time_tobe_taken']);
    _count = snapshotData['Count'] as int?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medications');

  static Stream<MedicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicationsRecord.fromSnapshot(s));

  static Future<MedicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicationsRecord.fromSnapshot(s));

  static MedicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicationsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createMedicationsRecordData({
  String? nameOfMedicine,
  int? count,
  String? photoUrl,
  DateTime? createdTime,
  String? displayName,
  String? email,
  String? uid,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name_of_medicine': nameOfMedicine,
      'Count': count,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'display_name': displayName,
      'email': email,
      'uid': uid,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}
