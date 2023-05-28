import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddMedicationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for timesaday widget.
  TextEditingController? timesadayController;
  String? Function(BuildContext, String?)? timesadayControllerValidator;
  // State field(s) for time widget.
  TextEditingController? timeController;
  String? Function(BuildContext, String?)? timeControllerValidator;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    timesadayController?.dispose();
    timeController?.dispose();
  }

  /// Additional helper methods are added here.

}
