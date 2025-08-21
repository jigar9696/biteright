import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
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
import 'bite_right_c1_home_page_model.dart';
export 'bite_right_c1_home_page_model.dart';

class BiteRightC1HomePageWidget extends StatefulWidget {
  const BiteRightC1HomePageWidget({super.key});

  static String routeName = 'BiteRight_C1_HomePage';
  static String routePath = '/biteRightC1HomePage';

  @override
  State<BiteRightC1HomePageWidget> createState() =>
      _BiteRightC1HomePageWidgetState();
}

class _BiteRightC1HomePageWidgetState extends State<BiteRightC1HomePageWidget> {
  late BiteRightC1HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightC1HomePageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_C1_HomePage'});
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 0.0, 0.0),
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
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 15.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Homepage_Image-removebg-preview_100%.png',
                                  width: double.infinity,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Text(
                      'Check What\'s Inside',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 12.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'BITE_RIGHT_C1_HOME_BarCode_Button_ON_TAP');
                        logFirebaseEvent(
                            'BarCode_Button_scan_barcode_q_r_code');
                        _model.barcodeValue =
                            await FlutterBarcodeScanner.scanBarcode(
                          '#C62828', // scanning line color
                          'Cancel', // cancel button text
                          true, // whether to show the flash icon
                          ScanMode.QR,
                        );

                        logFirebaseEvent('BarCode_Button_firestore_query');
                        _model.scannedProduct = await queryProductsRecordOnce(
                          queryBuilder: (productsRecord) =>
                              productsRecord.where(
                            'barcode_number',
                            isEqualTo: _model.barcodeValue,
                          ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);
                        if ((_model.scannedProduct != null) == true) {
                          logFirebaseEvent('BarCode_Button_firestore_query');
                          _model.currentUserDoc2 = await queryUsersRecordOnce(
                            queryBuilder: (usersRecord) => usersRecord.where(
                              'uid',
                              isEqualTo: currentUserUid,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          logFirebaseEvent('BarCode_Button_custom_action');
                          _model.userDietaryGroups =
                              await actions.getDietaryDocsFromIds(
                            _model.currentUserDoc2?.selectedGroups.toList(),
                          );
                          logFirebaseEvent('BarCode_Button_custom_action');
                          _model.masterAvoidList2 =
                              await actions.createMasterAvoidList(
                            _model.currentUserDoc2!.customIngredients.toList(),
                            _model.userDietaryGroups!.toList(),
                          );
                          if (functions.findConflictingIngredient(
                                      _model.scannedProduct!.ingredients
                                          .toList(),
                                      _model.masterAvoidList2!.toList()) !=
                                  '') {
                            logFirebaseEvent('BarCode_Button_navigate_to');

                            context.pushNamed(
                              BiteRightC2ResultWidget.routeName,
                              queryParameters: {
                                'isSafe': serializeParam(
                                  false,
                                  ParamType.bool,
                                ),
                                'conflictingIngredient': serializeParam(
                                  functions.findConflictingIngredient(
                                      _model.scannedProduct!.ingredients
                                          .toList(),
                                      _model.masterAvoidList2!.toList()),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            logFirebaseEvent('BarCode_Button_navigate_to');

                            context.pushNamed(
                              BiteRightC2ResultWidget.routeName,
                              queryParameters: {
                                'isSafe': serializeParam(
                                  true,
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
                          logFirebaseEvent('BarCode_Button_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Product Not Found. Please Try \"No Barcode? Take Photo\"',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
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
                      text: 'Scan Product Barcode',
                      options: FFButtonOptions(
                        width: 262.0,
                        height: 50.0,
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
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 12.0, 25.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'BITE_RIGHT_C1_HOME_OCR_Button_ON_TAP');
                        logFirebaseEvent('OCR_Button_firestore_query');
                        _model.currentUserDoc3 = await queryUsersRecordOnce(
                          queryBuilder: (usersRecord) => usersRecord.where(
                            'uid',
                            isEqualTo: currentUserUid,
                          ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);
                        logFirebaseEvent('OCR_Button_custom_action');
                        _model.userDietaryGroup3 =
                            await actions.getDietaryDocsFromIds(
                          _model.currentUserDoc3?.selectedGroups.toList(),
                        );
                        logFirebaseEvent('OCR_Button_custom_action');
                        _model.masterAvoidList3 =
                            await actions.createMasterAvoidList(
                          _model.currentUserDoc3!.customIngredients.toList(),
                          _model.userDietaryGroup3!.toList(),
                        );
                        logFirebaseEvent('OCR_Button_upload_media_to_firebase');
                        final selectedMedia = await selectMedia(
                          maxWidth: 1000.00,
                          maxHeight: 1000.00,
                          multiImage: false,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          safeSetState(() =>
                              _model.isDataUploading_uploadedPhoto = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
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

                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading_uploadedPhoto = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            safeSetState(() {
                              _model.uploadedLocalFile_uploadedPhoto =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl_uploadedPhoto =
                                  downloadUrls.first;
                            });
                          } else {
                            safeSetState(() {});
                            return;
                          }
                        }

                        if (_model.uploadedFileUrl_uploadedPhoto != '') {
                          logFirebaseEvent('OCR_Button_backend_call');
                          _model.ocrResult = await OCRspaceCall.call(
                            imageUrl: _model.uploadedFileUrl_uploadedPhoto,
                          );

                          logFirebaseEvent('OCR_Button_update_page_state');
                          _model.ocrRawOutput = getJsonField(
                            (_model.ocrResult?.jsonBody ?? ''),
                            r'''$.ParsedResults[0].ParsedText''',
                          ).toString();
                          safeSetState(() {});
                          if ((_model.ocrResult?.succeeded ?? true) == true) {
                            logFirebaseEvent('OCR_Button_update_page_state');
                            _model.ocrIngredients = functions
                                .splitTextToList(_model.ocrRawOutput)
                                .toList()
                                .cast<String>();
                            safeSetState(() {});
                            if (functions.findConflictingIngredient(
                                        _model.ocrIngredients.toList(),
                                        _model.masterAvoidList3!.toList()) !=
                                    '') {
                              logFirebaseEvent('OCR_Button_navigate_to');

                              context.pushNamed(
                                BiteRightC2ResultWidget.routeName,
                                queryParameters: {
                                  'isSafe': serializeParam(
                                    false,
                                    ParamType.bool,
                                  ),
                                  'conflictingIngredient': serializeParam(
                                    functions.findConflictingIngredient(
                                        _model.ocrIngredients.toList(),
                                        _model.masterAvoidList3!.toList()),
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            } else {
                              logFirebaseEvent('OCR_Button_navigate_to');

                              context.pushNamed(
                                BiteRightC2ResultWidget.routeName,
                                queryParameters: {
                                  'isSafe': serializeParam(
                                    true,
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
                            logFirebaseEvent('OCR_Button_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Error: Could not read the image.',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                duration: Duration(milliseconds: 8000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        } else {
                          logFirebaseEvent('OCR_Button_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Photo Not Uploaded, Please Try Again.',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'No Barcode? Take Photo',
                      options: FFButtonOptions(
                        width: 262.0,
                        height: 50.0,
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
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Take photo of ingredient list to analyse',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
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
