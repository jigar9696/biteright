import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_home_page_widget.dart' show BiteRightHomePageWidget;
import 'package:flutter/material.dart';

class BiteRightHomePageModel extends FlutterFlowModel<BiteRightHomePageWidget> {
  ///  Local state fields for this page.

  List<String> ocrIngredientsList = [];
  void addToOcrIngredientsList(String item) => ocrIngredientsList.add(item);
  void removeFromOcrIngredientsList(String item) =>
      ocrIngredientsList.remove(item);
  void removeAtIndexFromOcrIngredientsList(int index) =>
      ocrIngredientsList.removeAt(index);
  void insertAtIndexInOcrIngredientsList(int index, String item) =>
      ocrIngredientsList.insert(index, item);
  void updateOcrIngredientsListAtIndex(int index, Function(String) updateFn) =>
      ocrIngredientsList[index] = updateFn(ocrIngredientsList[index]);

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
  bool isDataUploading_photoForOCR = false;
  FFUploadedFile uploadedLocalFile_photoForOCR =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (OCRspace)] action in OCR_Button widget.
  ApiCallResponse? ocrApiResult;
  // Stores action output result for [Firestore Query - Query a collection] action in OCR_Button widget.
  UsersRecord? currentUserDocforOCR;
  // Stores action output result for [Firestore Query - Query a collection] action in OCR_Button widget.
  List<DietaryGroupsRecord>? userDietaryGroupDocsforOCR;
  // Stores action output result for [Custom Action - createMasterAvoidList] action in OCR_Button widget.
  List<String>? masterAvoidListforOCR;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
