import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bite_right_d6_disclaimer_model.dart';
export 'bite_right_d6_disclaimer_model.dart';

class BiteRightD6DisclaimerWidget extends StatefulWidget {
  const BiteRightD6DisclaimerWidget({super.key});

  static String routeName = 'BiteRight_D6_Disclaimer';
  static String routePath = '/biteRightD6Disclaimer';

  @override
  State<BiteRightD6DisclaimerWidget> createState() =>
      _BiteRightD6DisclaimerWidgetState();
}

class _BiteRightD6DisclaimerWidgetState
    extends State<BiteRightD6DisclaimerWidget> {
  late BiteRightD6DisclaimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightD6DisclaimerModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_D6_Disclaimer'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'BITE_RIGHT_D6_DISCLAIMER_arrow_back_ICN_');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                        Text(
                          'Disclaimer',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 220.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: Text(
                              'Bite Right\n\nA Mobile Solution for Personalized Dietary Profiling and Ingredient Recognition\n\nLast Updated: 22 August 2025\n\nIntroduction & Acceptance of Terms',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 2500.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Text(
                              'This disclaimer governs your use of the \"Bite Right\" mobile application (the \"Application\"). This Application has been developed as a prototype and proof-of-concept as part of a university dissertation project at Sheffield Hallam University.\n\nBy downloading, installing, or using this Application, you acknowledge that you understand it is an academic project and not a commercial product, and you agree to be bound by the terms outlined below. If you do not agree with this disclaimer, you must cease using the Application immediately.\n\n1. Academic and Experimental Nature\nThis Application is for demonstration and evaluation purposes only. It is an experimental project designed to explore concepts in full-stack, cross-platform mobile application development using modern frameworks. It is not a complete, market-ready product and is not intended for regular, real-world use. The functionality, data, and features are subject to limitations inherent in a student project.\n\n2. No Medical Advice\nThe Application and any information it generates are NOT a substitute for professional medical advice, diagnosis, or treatment. The Service is not intended to be used for the diagnosis or management of any health condition, particularly food allergies or intolerances.\nIf you have a medical condition or a severe food allergy, you must consult a qualified healthcare professional. Never disregard professional medical advice or delay seeking it because of information obtained from this Application.\n\n3. Specific Allergy & Dietary Warning\nGiven the experimental nature of this project, you MUST NOT rely on the Application for managing food allergies. The database is a sample set, and the recognition technology is a prototype. Always read the physical product packaging, which is the only reliable source of ingredient information, especially if you are at risk of a severe allergic reaction (e.g., anaphylaxis). The Application cannot account for factors like cross-contamination in manufacturing.\n\n4. Accuracy and Reliability of Data\nThe data within this Application is provided \"as-is\" for demonstration purposes and comes with no guarantee of accuracy, completeness, or timeliness. Sources of error include, but are not limited to:\n•\tA limited and potentially outdated sample database.\n•\tInherent limitations and potential errors of the prototype OCR technology.\n•\tThe use of placeholder or third-party data that has not been independently verified.\nAny discrepancy between the Application\'s data and a physical product label must be resolved in favour of the product label.\n\n5. Data Collection for Research Purposes\nAs part of this dissertation project, anonymised usage data may be collected for academic analysis. This may include interaction patterns, feature usage, and scan error rates. This data will be handled in accordance with the ethical guidelines of Sheffield Hallam University and will not contain personally identifiable information linked to your dietary profile. For full details, please refer to the Project Information Sheet & Consent Form provided separately.\n\n6. User Responsibility and Assumption of Risk\nYour use of this academic prototype is entirely at your own risk. You assume full responsibility for any actions you take based on information from the Application and for any resulting consequences.\n\n7. Limitation of Liability\nTO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL THE STUDENT AUTHOR OF THIS PROJECT, OR SHEFFIELD HALLAM UNIVERSITY, BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING PERSONAL INJURY, ARISING FROM THE USE OF, OR INABILITY TO USE, THIS APPLICATION. THIS IS A NON-COMMERCIAL, EXPERIMENTAL PROJECT, AND IS PROVIDED WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED.\n\n8. Governing Law\nThis Disclaimer shall be governed and construed in accordance with the laws of England and Wales.',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .around(SizedBox(height: 10.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
