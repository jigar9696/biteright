import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bite_right_d4a_vegan_model.dart';
export 'bite_right_d4a_vegan_model.dart';

class BiteRightD4aVeganWidget extends StatefulWidget {
  const BiteRightD4aVeganWidget({super.key});

  static String routeName = 'BiteRight_D4a_Vegan';
  static String routePath = '/biteRightD4aVegan';

  @override
  State<BiteRightD4aVeganWidget> createState() =>
      _BiteRightD4aVeganWidgetState();
}

class _BiteRightD4aVeganWidgetState extends State<BiteRightD4aVeganWidget> {
  late BiteRightD4aVeganModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiteRightD4aVeganModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BiteRight_D4a_Vegan'});
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
                                'BITE_RIGHT_D4A_VEGAN_arrow_back_ICN_ON_T');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                        Text(
                          'Vegan',
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
                      height: 200.0,
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
                                'A vegan diet involves abstaining from all animal products. This is the strictest form of vegetarianism and excludes meat, poultry, fish, dairy, eggs, and animal-derived substances like honey, gelatin, and lard. The motivation is often ethical, environmental, or health-related.',
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
                                'When you select the Vegan  profile, we will automatically filter out and flag items containing',
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
                      height: 3700.0,
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
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Obvious Animal Product\n\nIngredient Name: Meat\nAlso Known As (AKA): Flesh, Game\nDirect Animal Source: Mammals (cows, pigs, sheep, etc.)\n\nIngredient Name: Poultry\nAlso Known As (AKA): Chicken, Turkey, Duck\nDirect Animal Source: Birds\n\nIngredient Name: Fish\nAlso Known As (AKA): Seafood\nDirect Animal Source: Fish\n\nIngredient Name: Crustaceans\nAlso Known As (AKA): Shellfish, Prawns, Crab, Lobster\nDirect Animal Source: Aquatic arthropods\n\nIngredient Name: Molluscs\nAlso Known As (AKA): Shellfish, Mussels, Scallops, Oysters\nDirect Animal Source: Aquatic molluscs\n\nDairy\n\nIngredient Name: Milk\nAlso Known As (AKA): Milk Solids, Milk Powder\nDirect Animal Source: Cows, goats, sheep\n\nIngredient Name: Cheese\nDirect Animal Source: Mammal\'s Milk\n\nIngredient Name: Butter\nAlso Known As (AKA): Ghee\nDirect Animal Source: Mammal\'s Milk\n\nIngredient Name: Yogurt\nDirect Animal Source: Mammal\'s Milk\n\nIngredient Name: Cream\nDirect Animal Source: Mammal\'s Milk\n\nAnimal Product\n\nIngredient Name: Eggs\nAlso Known As (AKA): Ovum\nDirect Animal Source: Birds (primarily chickens)\n\nAnimal Product Derivative\n\nIngredient Name: Albumen\nAlso Known As (AKA): Albumin, Egg White\nDirect Animal Source: Chicken Eggs\n\nDairy Derivative\n\nIngredient Name: Casein\nAlso Known As (AKA): Caseinate, Sodium Caseinate\nDirect Animal Source: Mammal\'s Milk\n\nIngredient Name: Whey\nAlso Known As (AKA): Whey Powder, Whey Protein\nDirect Animal Source: Mammal\'s Milk\n\nIngredient Name: Lactose\nAlso Known As (AKA): Milk Sugar\nDirect Animal Source: Mammal\'s Milk\n\nBee Product\n\nIngredient Name: Honey\nDirect Animal Source: Honey Bees\n\nIngredient Name: Beeswax\nE-Number: E901\nDirect Animal Source: Honey Bees\n\nIngredient Name: Propolis\nDirect Animal Source: Honey Bees\n\nIngredient Name: Royal Jelly\nDirect Animal Source: Honey Bees\n\nSlaughter By-product\n\nIngredient Name: Gelatin\nAlso Known As (AKA): Gelatine\nE-Number: E441\nDirect Animal Source: Animal bones, skin, connective tissues\n\nIngredient Name: Lard / Tallow\nAlso Known As (AKA): Dripping\nDirect Animal Source: Rendered animal fat (pig, cow, etc.)\n\nIngredient Name: Suet\nDirect Animal Source: Fat from around the kidneys of cows/sheep\n\nIngredient Name: Isinglass\nDirect Animal Source: Fish swim bladders\n\nIngredient Name: Rennet\nAlso Known As (AKA): Animal Rennet\nDirect Animal Source: Stomachs of young mammals\n\nIngredient Name: Pepsin\nDirect Animal Source: Pig stomachs\n\nIngredient Name: Aspic\nDirect Animal Source: Meat or fish stock\n\nInsect Product\n\nIngredient Name: Carmine\nAlso Known As (AKA): Cochineal, Carminic Acid\nE-Number: E120\nDirect Animal Source: Cochineal insects\n\nIngredient Name: Shellac\nAlso Known As (AKA): Confectioner\'s Glaze\nE-Number: E904\nDirect Animal Source: Lac insects\n\nProcessing Aid\n\nIngredient Name: Bone Char\nAlso Known As (AKA): Natural Carbon\nDirect Animal Source: Animal bones\nAmbiguous (Animal or Plant)\n\nIngredient Name: Vitamin D3\nAlso Known As (AKA): Cholecalciferol\nDirect Animal Source: Sheep\'s wool (lanolin) or lichen\n\nIngredient Name: L-cysteine\nE-Number: E920\nDirect Animal Source: Poultry feathers, human hair, or microbial fermentation\n\nIngredient Name: Glycerin / Glycerol\nE-Number: E422\nDirect Animal Source: Animal fats or vegetable oils\n\nIngredient Name: Mono- and Diglycerides\nE-Number: E471\nDirect Animal Source: Animal fats or vegetable oils\n\nIngredient Name: Stearic Acid\nE-Number: E570\nDirect Animal Source: Animal fats or vegetable fats\n\nIngredient Name: Lecithin\nE-Number: E322\nDirect Animal Source: Egg yolks or soy beans\n\nNatural Flavouring\n\nIngredient Name: Squalene / Squalane\nDirect Animal Source: Shark liver oil or plants (olives, sugarcane)\n\nIngredient Name: Castoreum\nDirect Animal Source: Beaver scent glands',
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
                                )
                              ],
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
