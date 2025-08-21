import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'bite_right_c2_result_model.dart';
export 'bite_right_c2_result_model.dart';

class BiteRightC2ResultWidget extends StatefulWidget {
  const BiteRightC2ResultWidget({
    super.key,
    required this.isSafe,
    required this.conflictingIngredient,
  });

  final bool? isSafe;
  final String? conflictingIngredient;

  static String routeName = 'BiteRight_C2_Result';
  static String routePath = '/biteRightC2Result';

  @override
  State<BiteRightC2ResultWidget> createState() =>
      _BiteRightC2ResultWidgetState();
}

class _BiteRightC2ResultWidgetState extends State<BiteRightC2ResultWidget>
    with TickerProviderStateMixin {
  late BiteRightC2ResultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightC2ResultModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_C2_Result'});
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 25.0),
                      child: Text(
                        'Bite Right',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .displaySmallIsCustom,
                                ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).width >= 768.0
                        ? 530.0
                        : 630.0,
                    constraints: BoxConstraints(
                      maxWidth: 570.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Stack(
                        children: [
                          if (widget.isSafe == true)
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 20.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 430.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              'Congratulations.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.check_circle,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 150.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              'This product appears to be SAFE',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (widget.isSafe == false)
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 20.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 430.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD65650),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'WARNING...!!!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 35.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          Icon(
                                            Icons.dangerous_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 150.0,
                                          ),
                                          Text(
                                            'Contains ${widget.conflictingIngredient}',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 10.0, 25.0, 10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'BITE_RIGHT_C2_RESULT_BarCode_Button_ON_T');
                                          logFirebaseEvent(
                                              'BarCode_Button_scan_barcode_q_r_code');
                                          _model.barcodeValue =
                                              await FlutterBarcodeScanner
                                                  .scanBarcode(
                                            '#C62828', // scanning line color
                                            'Cancel', // cancel button text
                                            true, // whether to show the flash icon
                                            ScanMode.QR,
                                          );

                                          logFirebaseEvent(
                                              'BarCode_Button_firestore_query');
                                          _model.scannedProductDoc =
                                              await queryProductsRecordOnce(
                                            queryBuilder: (productsRecord) =>
                                                productsRecord.where(
                                              'barcode_number',
                                              isEqualTo: _model.barcodeValue,
                                            ),
                                            singleRecord: true,
                                          ).then((s) => s.firstOrNull);
                                          if (_model.scannedProductDoc !=
                                              null) {
                                            logFirebaseEvent(
                                                'BarCode_Button_firestore_query');
                                            _model.currentUserDoc =
                                                await queryUsersRecordOnce(
                                              queryBuilder: (usersRecord) =>
                                                  usersRecord.where(
                                                'uid',
                                                isEqualTo: currentUserUid,
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            logFirebaseEvent(
                                                'BarCode_Button_firestore_query');
                                            _model.userDietaryGroupDocs =
                                                await queryDietaryGroupsRecordOnce(
                                              queryBuilder: (dietaryGroupsRecord) =>
                                                  dietaryGroupsRecord
                                                      .whereArrayContainsAny(
                                                          'avoid_ingredients',
                                                          _model.currentUserDoc
                                                              ?.selectedGroups),
                                            );
                                            logFirebaseEvent(
                                                'BarCode_Button_custom_action');
                                            _model.masterAvoidList =
                                                await actions
                                                    .createMasterAvoidList(
                                              _model.currentUserDoc!
                                                  .customIngredients
                                                  .toList(),
                                              _model.userDietaryGroupDocs!
                                                  .toList(),
                                            );
                                            if (functions.findConflictingIngredient(
                                                        _model
                                                            .scannedProductDoc!
                                                            .ingredients
                                                            .toList(),
                                                        _model.masterAvoidList!
                                                            .toList()) !=
                                                    '') {
                                              logFirebaseEvent(
                                                  'BarCode_Button_navigate_to');

                                              context.pushNamed(
                                                BiteRightC2ResultWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'isSafe': serializeParam(
                                                    false,
                                                    ParamType.bool,
                                                  ),
                                                  'conflictingIngredient':
                                                      serializeParam(
                                                    '',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              logFirebaseEvent(
                                                  'BarCode_Button_navigate_to');

                                              context.pushNamed(
                                                BiteRightC2ResultWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'isSafe': serializeParam(
                                                    false,
                                                    ParamType.bool,
                                                  ),
                                                  'conflictingIngredient':
                                                      serializeParam(
                                                    '',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }
                                          } else {
                                            logFirebaseEvent(
                                                'BarCode_Button_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  '',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                duration: Duration(
                                                    milliseconds: 10000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        text: 'Scan Product Barcode',
                                        options: FFButtonOptions(
                                          width: 262.0,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 5.0, 25.0, 10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'BITE_RIGHT_C2_RESULT_CLOSE_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                              BiteRightC1HomePageWidget
                                                  .routeName);
                                        },
                                        text: 'Close',
                                        options: FFButtonOptions(
                                          width: 262.0,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
