import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'bite_right_d3_dietary_profile_widget.dart'
    show BiteRightD3DietaryProfileWidget;
import 'package:flutter/material.dart';

class BiteRightD3DietaryProfileModel
    extends FlutterFlowModel<BiteRightD3DietaryProfileWidget> {
  ///  Local state fields for this page.

  List<String> customIngredientsList = [];
  void addToCustomIngredientsList(String item) =>
      customIngredientsList.add(item);
  void removeFromCustomIngredientsList(String item) =>
      customIngredientsList.remove(item);
  void removeAtIndexFromCustomIngredientsList(int index) =>
      customIngredientsList.removeAt(index);
  void insertAtIndexInCustomIngredientsList(int index, String item) =>
      customIngredientsList.insert(index, item);
  void updateCustomIngredientsListAtIndex(
          int index, Function(String) updateFn) =>
      customIngredientsList[index] = updateFn(customIngredientsList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
