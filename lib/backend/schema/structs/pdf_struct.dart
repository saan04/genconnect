// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PdfStruct extends FFFirebaseStruct {
  PdfStruct({
    String? pdf,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pdf = pdf,
        super(firestoreUtilData);

  // "pdf" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  set pdf(String? val) => _pdf = val;
  bool hasPdf() => _pdf != null;

  static PdfStruct fromMap(Map<String, dynamic> data) => PdfStruct(
        pdf: data['pdf'] as String?,
      );

  static PdfStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PdfStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pdf': _pdf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pdf': serializeParam(
          _pdf,
          ParamType.String,
        ),
      }.withoutNulls;

  static PdfStruct fromSerializableMap(Map<String, dynamic> data) => PdfStruct(
        pdf: deserializeParam(
          data['pdf'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PdfStruct(${toMap()})';
}

PdfStruct createPdfStruct({
  String? pdf,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PdfStruct(
      pdf: pdf,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PdfStruct? updatePdfStruct(
  PdfStruct? pdf, {
  bool clearUnsetFields = true,
}) =>
    pdf
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addPdfStructData(
  Map<String, dynamic> firestoreData,
  PdfStruct? pdf,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pdf == null) {
    return;
  }
  if (pdf.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && pdf.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pdfData = getPdfFirestoreData(pdf, forFieldValue);
  final nestedData = pdfData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = pdf.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPdfFirestoreData(
  PdfStruct? pdf, [
  bool forFieldValue = false,
]) {
  if (pdf == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pdf.toMap());

  // Add any Firestore field values
  pdf.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPdfListFirestoreData(
  List<PdfStruct>? pdfs,
) =>
    pdfs?.map((e) => getPdfFirestoreData(e, true)).toList() ?? [];
