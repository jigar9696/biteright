import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_b4_reset_password_widget.dart'
    show BiteRightB4ResetPasswordWidget;
import 'package:flutter/material.dart';

class BiteRightB4ResetPasswordModel
    extends FlutterFlowModel<BiteRightB4ResetPasswordWidget> {
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
