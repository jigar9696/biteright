import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bite_right_d8_copyright_model.dart';
export 'bite_right_d8_copyright_model.dart';

class BiteRightD8CopyrightWidget extends StatefulWidget {
  const BiteRightD8CopyrightWidget({super.key});

  static String routeName = 'BiteRight_D8_Copyright';
  static String routePath = '/biteRightD8Copyright';

  @override
  State<BiteRightD8CopyrightWidget> createState() =>
      _BiteRightD8CopyrightWidgetState();
}

class _BiteRightD8CopyrightWidgetState
    extends State<BiteRightD8CopyrightWidget> {
  late BiteRightD8CopyrightModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightD8CopyrightModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_D8_Copyright'});
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
                                'BITE_RIGHT_D8_COPYRIGHT_arrow_back_ICN_O');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                        Text(
                          'Copyright',
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
                      height: 150.0,
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
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 0.0),
                              child: Text(
                                'Copyright Notice: Bite Right\nPreamble & Statement of Ownership\nCopyright © 2025 \nKoshti Jigar Chandraprakash. \nAll Rights Reserved.',
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1900.0,
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
                              'This mobile application, \"Bite Right,\" and all associated intellectual property—including its source code, object code, user interface, branding, and documentation (the \"Work\")—are the exclusive property of the author, Koshti Jigar Chandraprakash. This Work was created to fulfil the requirements of a dissertation at Sheffield Hallam University. All rights are reserved under the copyright laws of England and Wales and international treaties.\n\nLimited Academic License & Prohibited Uses\nThe author grants a limited, non-exclusive, non-transferable, revocable license to use this Work on a personal device solely for the purposes of academic evaluation and demonstration related to this dissertation project.\n\nAny use beyond this limited scope is a violation of this license and an infringement of copyright. The following actions are strictly prohibited without prior written consent from the author:\n\nNo Commercialization: The Application is a non-commercial academic work and may not be sold, leased, sublicensed, or used for any commercial purpose or financial gain.\n\nNo Reproduction or Distribution: You may not copy, share, or distribute the Application or any of its parts.\n\nNo Modification or Reverse Engineering: You may not alter, decompile, disassemble, or create derivative works from the Application.\n\nProtection of Academic Integrity: You may not represent this Work, or any portion thereof, as your own. Using this Work in any manner that constitutes plagiarism or academic misconduct is expressly forbidden.\n\nAcknowledgement of Third-Party Materials\nThis Work may incorporate third-party libraries or assets that are subject to their own copyright and license terms. The copyright for such materials remains with their respective owners. This notice does not grant you any rights to use these third-party materials outside of their intended function within this Application.\n\nNo Waiver\nFailure by the author to enforce any provision of this notice shall not be construed as a waiver of any right or provision. Any waiver of a right must be in writing and signed by the author to be valid.\n\nEnquiries\nTo request permission for any use of this Work outside the scope of the limited academic license, please contact the author at: Koshti.Jigar.Ch@student.shu.ac.uk OR jigar9696@gmail.com.',
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
