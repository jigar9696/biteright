import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_createaccount_widget.dart' show BiteRightCreateaccountWidget;
import 'package:flutter/material.dart';

class BiteRightCreateaccountModel
    extends FlutterFlowModel<BiteRightCreateaccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Create_Name widget.
  FocusNode? createNameFocusNode;
  TextEditingController? createNameTextController;
  String? Function(BuildContext, String?)? createNameTextControllerValidator;
  // State field(s) for Create_emailAddress widget.
  FocusNode? createEmailAddressFocusNode;
  TextEditingController? createEmailAddressTextController;
  String? Function(BuildContext, String?)?
      createEmailAddressTextControllerValidator;
  // State field(s) for Create_password widget.
  FocusNode? createPasswordFocusNode;
  TextEditingController? createPasswordTextController;
  late bool createPasswordVisibility;
  String? Function(BuildContext, String?)?
      createPasswordTextControllerValidator;
  // State field(s) for Create_Confirm_Password widget.
  FocusNode? createConfirmPasswordFocusNode;
  TextEditingController? createConfirmPasswordTextController;
  late bool createConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      createConfirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    createPasswordVisibility = false;
    createConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    createNameFocusNode?.dispose();
    createNameTextController?.dispose();

    createEmailAddressFocusNode?.dispose();
    createEmailAddressTextController?.dispose();

    createPasswordFocusNode?.dispose();
    createPasswordTextController?.dispose();

    createConfirmPasswordFocusNode?.dispose();
    createConfirmPasswordTextController?.dispose();
  }
}
