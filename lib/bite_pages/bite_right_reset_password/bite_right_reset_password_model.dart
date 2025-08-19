import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_reset_password_widget.dart'
    show BiteRightResetPasswordWidget;
import 'package:flutter/material.dart';

class BiteRightResetPasswordModel
    extends FlutterFlowModel<BiteRightResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AccountInfoEmailID widget.
  FocusNode? accountInfoEmailIDFocusNode;
  TextEditingController? accountInfoEmailIDTextController;
  String? Function(BuildContext, String?)?
      accountInfoEmailIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    accountInfoEmailIDFocusNode?.dispose();
    accountInfoEmailIDTextController?.dispose();
  }
}
