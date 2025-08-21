import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_b2_auth3_phone_widget.dart' show BiteRightB2Auth3PhoneWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BiteRightB2Auth3PhoneModel
    extends FlutterFlowModel<BiteRightB2Auth3PhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  late MaskTextInputFormatter phoneNumberMask;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
