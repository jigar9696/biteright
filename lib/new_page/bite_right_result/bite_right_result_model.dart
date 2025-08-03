import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_result_widget.dart' show BiteRightResultWidget;
import 'package:flutter/material.dart';

class BiteRightResultModel extends FlutterFlowModel<BiteRightResultWidget> {
  ///  State fields for stateful widgets in this page.

  var barcodeValue = '';
  // Stores action output result for [Firestore Query - Query a collection] action in BarCode_Button widget.
  ProductsRecord? scannedProductDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in BarCode_Button widget.
  UsersRecord? currentUserDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in BarCode_Button widget.
  List<DietaryGroupsRecord>? userDietaryGroupDocs;
  // Stores action output result for [Custom Action - createMasterAvoidList] action in BarCode_Button widget.
  List<String>? masterAvoidList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
