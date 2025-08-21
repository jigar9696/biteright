import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_c1_home_page_widget.dart' show BiteRightC1HomePageWidget;
import 'package:flutter/material.dart';

class BiteRightC1HomePageModel
    extends FlutterFlowModel<BiteRightC1HomePageWidget> {
  ///  Local state fields for this page.

  List<String> ocrIngredients = [];
  void addToOcrIngredients(String item) => ocrIngredients.add(item);
  void removeFromOcrIngredients(String item) => ocrIngredients.remove(item);
  void removeAtIndexFromOcrIngredients(int index) =>
      ocrIngredients.removeAt(index);
  void insertAtIndexInOcrIngredients(int index, String item) =>
      ocrIngredients.insert(index, item);
  void updateOcrIngredientsAtIndex(int index, Function(String) updateFn) =>
      ocrIngredients[index] = updateFn(ocrIngredients[index]);

  String ocrRawOutput = 'OCR_Raw_Output';

  List<String> masterAvoidList = [];
  void addToMasterAvoidList(String item) => masterAvoidList.add(item);
  void removeFromMasterAvoidList(String item) => masterAvoidList.remove(item);
  void removeAtIndexFromMasterAvoidList(int index) =>
      masterAvoidList.removeAt(index);
  void insertAtIndexInMasterAvoidList(int index, String item) =>
      masterAvoidList.insert(index, item);
  void updateMasterAvoidListAtIndex(int index, Function(String) updateFn) =>
      masterAvoidList[index] = updateFn(masterAvoidList[index]);

  UsersRecord? cachedUserDoc;

  ///  State fields for stateful widgets in this page.

  var barcodeValue = '';
  // Stores action output result for [Firestore Query - Query a collection] action in BarCode_Button widget.
  ProductsRecord? scannedProduct;
  // Stores action output result for [Firestore Query - Query a collection] action in BarCode_Button widget.
  UsersRecord? currentUserDoc2;
  // Stores action output result for [Custom Action - getDietaryDocsFromIds] action in BarCode_Button widget.
  List<DietaryGroupsRecord>? userDietaryGroups;
  // Stores action output result for [Custom Action - createMasterAvoidList] action in BarCode_Button widget.
  List<String>? masterAvoidList2;
  // Stores action output result for [Firestore Query - Query a collection] action in OCR_Button widget.
  UsersRecord? currentUserDoc3;
  // Stores action output result for [Custom Action - getDietaryDocsFromIds] action in OCR_Button widget.
  List<DietaryGroupsRecord>? userDietaryGroup3;
  // Stores action output result for [Custom Action - createMasterAvoidList] action in OCR_Button widget.
  List<String>? masterAvoidList3;
  bool isDataUploading_uploadedPhoto = false;
  FFUploadedFile uploadedLocalFile_uploadedPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedPhoto = '';

  // Stores action output result for [Backend Call - API (OCRspace)] action in OCR_Button widget.
  ApiCallResponse? ocrResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
