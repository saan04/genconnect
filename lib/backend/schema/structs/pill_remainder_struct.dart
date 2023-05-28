// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PillRemainderStruct extends FFFirebaseStruct {
  PillRemainderStruct({
    String? name,
    DateTime? time,
    int? frequencyPerday,
    String? desc,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _time = time,
        _frequencyPerday = frequencyPerday,
        _desc = desc,
        super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;
  bool hasTime() => _time != null;

  // "frequency_perday" field.
  int? _frequencyPerday;
  int get frequencyPerday => _frequencyPerday ?? 0;
  set frequencyPerday(int? val) => _frequencyPerday = val;
  void incrementFrequencyPerday(int amount) =>
      _frequencyPerday = frequencyPerday + amount;
  bool hasFrequencyPerday() => _frequencyPerday != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  static PillRemainderStruct fromMap(Map<String, dynamic> data) =>
      PillRemainderStruct(
        name: data['Name'] as String?,
        time: data['Time'] as DateTime?,
        frequencyPerday: data['frequency_perday'] as int?,
        desc: data['desc'] as String?,
      );

  static PillRemainderStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PillRemainderStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Time': _time,
        'frequency_perday': _frequencyPerday,
        'desc': _desc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'frequency_perday': serializeParam(
          _frequencyPerday,
          ParamType.int,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
      }.withoutNulls;

  static PillRemainderStruct fromSerializableMap(Map<String, dynamic> data) =>
      PillRemainderStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['Time'],
          ParamType.DateTime,
          false,
        ),
        frequencyPerday: deserializeParam(
          data['frequency_perday'],
          ParamType.int,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PillRemainderStruct(${toMap()})';
}

PillRemainderStruct createPillRemainderStruct({
  String? name,
  DateTime? time,
  int? frequencyPerday,
  String? desc,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PillRemainderStruct(
      name: name,
      time: time,
      frequencyPerday: frequencyPerday,
      desc: desc,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PillRemainderStruct? updatePillRemainderStruct(
  PillRemainderStruct? pillRemainder, {
  bool clearUnsetFields = true,
}) =>
    pillRemainder
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addPillRemainderStructData(
  Map<String, dynamic> firestoreData,
  PillRemainderStruct? pillRemainder,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pillRemainder == null) {
    return;
  }
  if (pillRemainder.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && pillRemainder.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pillRemainderData =
      getPillRemainderFirestoreData(pillRemainder, forFieldValue);
  final nestedData =
      pillRemainderData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = pillRemainder.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPillRemainderFirestoreData(
  PillRemainderStruct? pillRemainder, [
  bool forFieldValue = false,
]) {
  if (pillRemainder == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pillRemainder.toMap());

  // Add any Firestore field values
  pillRemainder.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPillRemainderListFirestoreData(
  List<PillRemainderStruct>? pillRemainders,
) =>
    pillRemainders
        ?.map((e) => getPillRemainderFirestoreData(e, true))
        .toList() ??
    [];
