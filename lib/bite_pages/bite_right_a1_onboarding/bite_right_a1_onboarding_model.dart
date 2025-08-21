import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bite_right_a1_onboarding_widget.dart' show BiteRightA1OnboardingWidget;
import 'package:flutter/material.dart';

class BiteRightA1OnboardingModel
    extends FlutterFlowModel<BiteRightA1OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageViewOnBoarding widget.
  PageController? pageViewOnBoardingController;

  int get pageViewOnBoardingCurrentIndex =>
      pageViewOnBoardingController != null &&
              pageViewOnBoardingController!.hasClients &&
              pageViewOnBoardingController!.page != null
          ? pageViewOnBoardingController!.page!.round()
          : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
