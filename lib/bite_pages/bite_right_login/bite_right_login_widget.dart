import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bite_right_login_model.dart';
export 'bite_right_login_model.dart';

class BiteRightLoginWidget extends StatefulWidget {
  const BiteRightLoginWidget({super.key});

  static String routeName = 'BiteRight_login';
  static String routePath = '/biteRightLogin';

  @override
  State<BiteRightLoginWidget> createState() => _BiteRightLoginWidgetState();
}

class _BiteRightLoginWidgetState extends State<BiteRightLoginWidget> {
  late BiteRightLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightLoginModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_login'});
    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

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
                        EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 25.0),
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
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Welcome Back',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineLargeIsCustom,
                              ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 12.0, 0.0, 24.0),
                    child: Text(
                      'Let\'s get started by filling out the form below.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 16.0),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.emailAddressTextController,
                      focusNode: _model.emailAddressFocusNode,
                      autofocus: true,
                      autofillHints: [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: FlutterFlowTheme.of(context)
                            .labelLarge
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                          ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.emailAddressTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 16.0),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.passwordTextController,
                      focusNode: _model.passwordFocusNode,
                      autofocus: true,
                      autofillHints: [AutofillHints.password],
                      obscureText: !_model.passwordVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: FlutterFlowTheme.of(context)
                            .labelLarge
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        suffixIcon: InkWell(
                          onTap: () => safeSetState(
                            () => _model.passwordVisibility =
                                !_model.passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                          ),
                      validator: _model.passwordTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'BITE_RIGHT_LOGIN_PAGE_SIGN_IN_BTN_ON_TAP');
                      logFirebaseEvent('Button_auth');
                      GoRouter.of(context).prepareAuthEvent();

                      final user = await authManager.signInWithEmail(
                        context,
                        _model.emailAddressTextController.text,
                        _model.passwordTextController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      context.goNamedAuth(
                          BiteRightHomePageWidget.routeName, context.mounted);
                    },
                    text: 'Sign In',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 24.0),
                  child: Container(
                    width: 370.0,
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Container(
                              width: double.infinity,
                              height: 2.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 70.0,
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'OR',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'BITE_RIGHT_LOGIN_CONTINUE_WITH_GOOGLE_BT');
                      logFirebaseEvent('Button_auth');
                      GoRouter.of(context).prepareAuthEvent();
                      final user = await authManager.signInWithGoogle(context);
                      if (user == null) {
                        return;
                      }

                      context.goNamedAuth(
                          BiteRightHomePageWidget.routeName, context.mounted);
                    },
                    text: 'Continue with Google',
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      hoverColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'BITE_RIGHT_LOGIN_CONTINUE_WITH_PHONE_BTN');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(
                        BiteRightAuth3PhoneWidget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'Continue with Phone',
                    icon: Icon(
                      Icons.phone,
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      hoverColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                ),

                // You will have to add an action on this rich text to go to your login page.
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'BITE_RIGHT_LOGIN_RichText_inr9t80k_ON_TA');
                        logFirebaseEvent('RichText_navigate_to');

                        context
                            .pushNamed(BiteRightCreateaccountWidget.routeName);
                      },
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: 'Sign Up here',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
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
