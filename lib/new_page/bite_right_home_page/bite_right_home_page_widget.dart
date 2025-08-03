import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'bite_right_home_page_model.dart';
export 'bite_right_home_page_model.dart';

class BiteRightHomePageWidget extends StatefulWidget {
  const BiteRightHomePageWidget({super.key});

  static String routeName = 'BiteRight_HomePage';
  static String routePath = '/biteRightHomePage';

  @override
  State<BiteRightHomePageWidget> createState() =>
      _BiteRightHomePageWidgetState();
}

class _BiteRightHomePageWidgetState extends State<BiteRightHomePageWidget> {
  late BiteRightHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightHomePageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 0.0, 25.0),
                    child: Text(
                      'Bite Right',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displaySmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .displaySmallIsCustom,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 75.0, 10.0, 15.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              FFIcons.kbarcode,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 200.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      _model.barcodeValue,
                      'BarcodeValue',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.barcodeValue =
                            await FlutterBarcodeScanner.scanBarcode(
                          '#C62828', // scanning line color
                          'Cancel', // cancel button text
                          true, // whether to show the flash icon
                          ScanMode.QR,
                        );

                        _model.scannedProductDoc =
                            await queryProductsRecordOnce(
                          queryBuilder: (productsRecord) =>
                              productsRecord.where(
                            'barcode_number',
                            isEqualTo: _model.barcodeValue,
                          ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);
                        if (_model.scannedProductDoc != null) {
                          _model.currentUserDoc = await queryUsersRecordOnce(
                            queryBuilder: (usersRecord) => usersRecord.where(
                              'uid',
                              isEqualTo: currentUserUid,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          _model.userDietaryGroupDocs =
                              await queryDietaryGroupsRecordOnce(
                            queryBuilder: (dietaryGroupsRecord) =>
                                dietaryGroupsRecord.whereArrayContainsAny(
                                    'avoid_ingredients',
                                    _model.currentUserDoc?.selectedGroups),
                          );
                          _model.masterAvoidList =
                              await actions.createMasterAvoidList(
                            _model.currentUserDoc!.customIngredients.toList(),
                            _model.userDietaryGroupDocs!.toList(),
                          );
                          if (functions.findConflictingIngredient(
                                      _model.scannedProductDoc!.ingredients
                                          .toList(),
                                      _model.masterAvoidList!.toList()) !=
                                  '') {
                            context.pushNamed(
                              BiteRightResultWidget.routeName,
                              queryParameters: {
                                'isSafe': serializeParam(
                                  false,
                                  ParamType.bool,
                                ),
                                'conflictingIngredient': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            context.pushNamed(
                              BiteRightResultWidget.routeName,
                              queryParameters: {
                                'isSafe': serializeParam(
                                  false,
                                  ParamType.bool,
                                ),
                                'conflictingIngredient': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              duration: Duration(milliseconds: 10000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Scan Product',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      // photoForOCR
                      final selectedMedia = await selectMedia(
                        maxWidth: 1920.00,
                        maxHeight: 1080.00,
                        multiImage: false,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        safeSetState(
                            () => _model.isDataUploading_photoForOCR = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        try {
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();
                        } finally {
                          _model.isDataUploading_photoForOCR = false;
                        }
                        if (selectedUploadedFiles.length ==
                            selectedMedia.length) {
                          safeSetState(() {
                            _model.uploadedLocalFile_photoForOCR =
                                selectedUploadedFiles.first;
                          });
                        } else {
                          safeSetState(() {});
                          return;
                        }
                      }

                      _model.ocrApiResult = await OCRspaceCall.call(
                        uploadedImage: _model.uploadedLocalFile_photoForOCR,
                      );

                      if ((_model.ocrApiResult?.succeeded ?? true)) {
                        _model.ocrIngredientsList = functions
                            .splitTextToList(getJsonField(
                              (_model.ocrApiResult?.jsonBody ?? ''),
                              r'''$.ParsedResults[0].ParsedText''',
                            ).toString())
                            .toList()
                            .cast<String>();
                        safeSetState(() {});
                        _model.currentUserDocforOCR =
                            await queryUsersRecordOnce(
                          queryBuilder: (usersRecord) => usersRecord.where(
                            'uid',
                            isEqualTo: currentUserUid,
                          ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);
                        _model.userDietaryGroupDocsforOCR =
                            await queryDietaryGroupsRecordOnce(
                          queryBuilder: (dietaryGroupsRecord) =>
                              dietaryGroupsRecord.whereArrayContainsAny(
                                  'avoid_ingredients',
                                  _model.currentUserDoc?.selectedGroups),
                        );
                        _model.masterAvoidListforOCR =
                            await actions.createMasterAvoidList(
                          _model.currentUserDoc!.customIngredients.toList(),
                          _model.userDietaryGroupDocsforOCR!.toList(),
                        );
                        if (functions.findConflictingIngredient(
                                    _model.ocrIngredientsList.toList(),
                                    _model.masterAvoidListforOCR!.toList()) !=
                                '') {
                          context.pushNamed(
                            BiteRightResultWidget.routeName,
                            queryParameters: {
                              'isSafe': serializeParam(
                                false,
                                ParamType.bool,
                              ),
                              'conflictingIngredient': serializeParam(
                                '',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          context.pushNamed(
                            BiteRightResultWidget.routeName,
                            queryParameters: {
                              'isSafe': serializeParam(
                                false,
                                ParamType.bool,
                              ),
                              'conflictingIngredient': serializeParam(
                                '',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Could not read image. Please try again.',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 8000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }

                      safeSetState(() {});
                    },
                    text: 'No Barcode? Take Photo',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Take photo of ingredient list to analyse',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
