import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bite_right_d4a_vegetarian_model.dart';
export 'bite_right_d4a_vegetarian_model.dart';

class BiteRightD4aVegetarianWidget extends StatefulWidget {
  const BiteRightD4aVegetarianWidget({super.key});

  static String routeName = 'BiteRight_D4a_Vegetarian';
  static String routePath = '/biteRightD4aVegetarian';

  @override
  State<BiteRightD4aVegetarianWidget> createState() =>
      _BiteRightD4aVegetarianWidgetState();
}

class _BiteRightD4aVegetarianWidgetState
    extends State<BiteRightD4aVegetarianWidget> {
  late BiteRightD4aVegetarianModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightD4aVegetarianModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_D4a_Vegetarian'});
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
                                'BITE_RIGHT_D4A_VEGETARIAN_arrow_back_ICN');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                        Text(
                          'Vegetarian',
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
                      height: 130.0,
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
                                'Most vegetarians in the UK follow a lacto-ovo-vegetarian diet, meaning they also consume dairy products like milk, cheese and eggs.',
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
                                'When you select the Vegetarian  profile, we will automatically filter out and flag items containing',
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
                      height: 2400.0,
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
                              'Obvious Animal Flesh\n\nIngredient Name: Meat\nAlso Known As (AKA): Flesh, Animal Flesh, Game\nDirect Animal Source: Mammals, birds, etc.\n\nIngredient Name: Poultry\nAlso Known As (AKA): Chicken, Turkey, Duck\nDirect Animal Source: Birds\n\nIngredient Name: Fish\nAlso Known As (AKA): Seafood\nDirect Animal Source: Fish\n\nIngredient Name: Crustaceans / Molluscs\nAlso Known As (AKA): Shellfish, Seafood, Prawns, Crab, Mussels\nDirect Animal Source: Aquatic animals\n\nSlaughter By-product\n\nIngredient Name: Gelatin\nAlso Known As (AKA): Gelatine, Aspic\nE-Number: E441\nDirect Animal Source: Animal bones\n\nIngredient Name: Animal Rennet\nAlso Known As (AKA): Rennet\nDirect Animal Source: Stomachs of young mammals (e.g.\n\nIngredient Name: Lard / Tallow\nAlso Known As (AKA): Dripping\nDirect Animal Source: Rendered animal fat (pig\n\nIngredient Name: Suet\nDirect Animal Source: Fat from around the kidneys of cows/sheep\n\nIngredient Name: Isinglass\nDirect Animal Source: Fish swim bladders\n\nIngredient Name: Animal Stock / Broth\nDirect Animal Source: Animal bones\n\nIngredient Name: Omega-3 Fatty Acids (Fish Oil)\nAlso Known As (AKA): Fish Oil\nDirect Animal Source: Fish\n\nIngredient Name: Collagen\nDirect Animal Source: Animal skin\n\nIngredient Name: Glucosamine / Chondroitin\nDirect Animal Source: Shellfish shells, animal cartilage\n\nIngredient Name: L-cysteine\nE-Number: E920\nDirect Animal Source: Poultry feathers, hog hair\n\nIngredient Name: Edible Bone Phosphate\nE-Number: E542\nDirect Animal Source: Animal bones\n\nInsect Product\n\nIngredient Name: Carmine\nAlso Known As (AKA): Cochineal, Carminic Acid, Natural Red 4\nE-Number: E120\nDirect Animal Source: Cochineal insects\n\nIngredient Name: Shellac\nAlso Known As (AKA): Confectioner\'s Glaze, Resinous Glaze\nE-Number: E904\nDirect Animal Source: Lac insects\n\nAmbiguous (Animal or Plant)\n\nIngredient Name: Glycerin / Glycerol\nAlso Known As (AKA): Glycerine\nE-Number: E422\nDirect Animal Source: Animal fats or vegetable oils\n\nIngredient Name: Mono- and Diglycerides\nE-Number: E471\nDirect Animal Source: Animal fats or vegetable oils\n\nIngredient Name: Stearic Acid\nE-Number: E570\nDirect Animal Source: Animal fats or vegetable fats\n\nSpecific Nuance\n\nIngredient Name: Vitamin D3\nAlso Known As (AKA): Cholecalciferol\nDirect Animal Source: Sheep\'s wool (lanolin) or fish oil',
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
