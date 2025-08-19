import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_auth3_phone_widget.dart' show BiteRightAuth3PhoneWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BiteRightAuth3PhoneModel
    extends FlutterFlowModel<BiteRightAuth3PhoneWidget> {
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
