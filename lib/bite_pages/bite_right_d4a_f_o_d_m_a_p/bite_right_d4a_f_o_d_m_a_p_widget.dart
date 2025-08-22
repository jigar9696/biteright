import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bite_right_d4a_f_o_d_m_a_p_model.dart';
export 'bite_right_d4a_f_o_d_m_a_p_model.dart';

class BiteRightD4aFODMAPWidget extends StatefulWidget {
  const BiteRightD4aFODMAPWidget({super.key});

  static String routeName = 'BiteRight_D4a_FODMAP';
  static String routePath = '/biteRightD4aFODMAP';

  @override
  State<BiteRightD4aFODMAPWidget> createState() =>
      _BiteRightD4aFODMAPWidgetState();
}

class _BiteRightD4aFODMAPWidgetState extends State<BiteRightD4aFODMAPWidget> {
  late BiteRightD4aFODMAPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightD4aFODMAPModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_D4a_FODMAP'});
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
                                'BITE_RIGHT_D4A_F_O_D_M_A_P_arrow_back_IC');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                        Text(
                          'FODMAP',
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
                      height: 250.0,
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
                                'FODMAP is an acronym for Fermentable Oligosaccharides, Disaccharides, Monosaccharides, and Polyols.\n\n**Disclaimer:** \nA low FODMAP diet is often medically supervised. Please consult with a healthcare professional before making significant dietary changes.',
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
                      height: 120.0,
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
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'When you select the FODMAP profile, we will automatically filter out and flag items containing',
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
                              'Sweetener\n\nIngredient Name: High-Fructose Corn Syrup\nAlso Known As (AKA): HFCS\nFODMAP Type: Fructose\n\nIngredient Name: Honey\nFODMAP Type: Fructose\n\nIngredient Name: Agave Syrup\nFODMAP Type: Fructose\n\nIngredient Name: Sorbitol\nE-Number: E420\nFODMAP Type: Polyol\n\nIngredient Name: Mannitol\nE-Number: E421\nFODMAP Type: Polyol\n\nIngredient Name: Maltitol\nE-Number: E965\nFODMAP Type: Polyol\n\nIngredient Name: Xylitol\nE-Number: E967\nFODMAP Type: Polyol\n\nIngredient Name: Isomalt\nE-Number: E953\nFODMAP Type: Polyol\n\nFruit\n\nIngredient Name: Apple\nFODMAP Type: Fructose, Sorbitol\n\nDairy\n\nIngredient Name: Milk\nAlso Known As (AKA): Cow, Goat, Sheep milk\nFODMAP Type: Lactose\n\nIngredient Name: Soft Cheese\nAlso Known As (AKA): Ricotta, Cream cheese, Mascarpone\nFODMAP Type: Lactose\n\nIngredient Name: Yogurt\nFODMAP Type: Lactose\n\nGrain\n\nIngredient Name: Wheat\nFODMAP Type: Fructans\n\nVegetable\n\nIngredient Name: Garlic\nFODMAP Type: Fructans\n\nIngredient Name: Onion\nAlso Known As (AKA): Shallot, Leek\nFODMAP Type: Fructans\n\nAdditive\n\nIngredient Name: Inulin\nE-Number: E957\nAlso Known As (AKA): Chicory Root Fiber\nFODMAP Type: Fructans\n\nLegume\nIngredient Name: Kidney Beans\nFODMAP Type: GOS\n\nIngredient Name: Chickpeas\nFODMAP Type: GOS\n\nIngredient Name: Soybeans\nAlso Known As (AKA): Soy Flour, TSP\nFODMAP Type: GOS\n\nNut\n\nIngredient Name: Cashews\nFODMAP Type: GOS',
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
