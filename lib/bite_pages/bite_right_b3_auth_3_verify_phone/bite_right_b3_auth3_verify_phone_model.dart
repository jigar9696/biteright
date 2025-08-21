import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_b3_auth3_verify_phone_widget.dart'
    show BiteRightB3Auth3VerifyPhoneWidget;
import 'package:flutter/material.dart';

class BiteRightB3Auth3VerifyPhoneModel
    extends FlutterFlowModel<BiteRightB3Auth3VerifyPhoneWidget> {
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
