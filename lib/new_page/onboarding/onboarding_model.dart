import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
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
