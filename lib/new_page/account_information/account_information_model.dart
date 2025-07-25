import '/flutter_flow/flutter_flow_util.dart';
import 'account_information_widget.dart' show AccountInformationWidget;
import 'package:flutter/material.dart';

class AccountInformationModel
    extends FlutterFlowModel<AccountInformationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AccountInfoName widget.
  FocusNode? accountInfoNameFocusNode1;
  TextEditingController? accountInfoNameTextController1;
  String? Function(BuildContext, String?)?
      accountInfoNameTextController1Validator;
  // State field(s) for AccountInfoName widget.
  FocusNode? accountInfoNameFocusNode2;
  TextEditingController? accountInfoNameTextController2;
  String? Function(BuildContext, String?)?
      accountInfoNameTextController2Validator;
  // State field(s) for AccountInfoEmailID widget.
  FocusNode? accountInfoEmailIDFocusNode;
  TextEditingController? accountInfoEmailIDTextController;
  String? Function(BuildContext, String?)?
      accountInfoEmailIDTextControllerValidator;
  // State field(s) for AccountInfoChangePassword widget.
  FocusNode? accountInfoChangePasswordFocusNode;
  TextEditingController? accountInfoChangePasswordTextController;
  String? Function(BuildContext, String?)?
      accountInfoChangePasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    accountInfoNameFocusNode1?.dispose();
    accountInfoNameTextController1?.dispose();

    accountInfoNameFocusNode2?.dispose();
    accountInfoNameTextController2?.dispose();

    accountInfoEmailIDFocusNode?.dispose();
    accountInfoEmailIDTextController?.dispose();

    accountInfoChangePasswordFocusNode?.dispose();
    accountInfoChangePasswordTextController?.dispose();
  }
}
