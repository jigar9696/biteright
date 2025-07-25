import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

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
  void dispose() {
    tabBarController?.dispose();
  }
}
