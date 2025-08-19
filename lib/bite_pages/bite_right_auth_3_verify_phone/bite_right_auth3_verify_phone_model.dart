import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_auth3_verify_phone_widget.dart'
    show BiteRightAuth3VerifyPhoneWidget;
import 'package:flutter/material.dart';

class BiteRightAuth3VerifyPhoneModel
    extends FlutterFlowModel<BiteRightAuth3VerifyPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
