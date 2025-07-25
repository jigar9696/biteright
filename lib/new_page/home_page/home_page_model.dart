import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  var barcodeValue = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProductsRecord? scannedProductDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? currentUserDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DietaryGroupsRecord>? userDietaryGroupDocs;
  // Stores action output result for [Custom Action - createMasterAvoidList] action in Button widget.
  List<String>? masterAvoidList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
