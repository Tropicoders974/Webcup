import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'popup_prev_model.dart';
export 'popup_prev_model.dart';

class PopupPrevWidget extends StatefulWidget {
  const PopupPrevWidget({
    super.key,
    String? title,
    String? type,
    String? reward,
    String? localisation,
    String? cible,
    String? deadline,
    String? extraction,
    String? ressources,
  })  : title = title ?? 'some title',
        type = type ?? 'some type',
        reward = reward ?? 'some reward',
        localisation = localisation ?? 'some localisation',
        cible = cible ?? 'some cible',
        deadline = deadline ?? 'some deadline',
        extraction = extraction ?? 'some extraction',
        ressources = ressources ?? 'some ressources';

  final String title;
  final String type;
  final String reward;
  final String localisation;
  final String cible;
  final String deadline;
  final String extraction;
  final String ressources;

  @override
  State<PopupPrevWidget> createState() => _PopupPrevWidgetState();
}

class _PopupPrevWidgetState extends State<PopupPrevWidget> {
  late PopupPrevModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupPrevModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x2B202529),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: const Color(0xFFDCB253),
            width: 2.5,
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(-1.0, -1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ATTENTION :',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Authority',
                              color: Colors.white,
                              fontSize: 19.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AUCUN RETOUR EN ARRIERE ! ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Authority',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 19.0,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 323.0,
                          height: 154.0,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Une fois que vous aurez accepté une mission, aucun retour en arrière ne sera possible. Vous serez engagé à mener à bien une mission jusqu’à son terme, quels que soient les défis ou les obstacles rencontrés en cours de route. Veuillez bien réfléchir avant de prendre votre décision, car les conséquences pourraient être irréversibles.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                              text: 'ACCEPTER',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF096A09),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Authority',
                                      color: Colors.white,
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamedAuth('Home', context.mounted);

                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();
                              },
                              text: 'REFUSER',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.transparent,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Authority',
                                      color: Colors.white,
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Color(0xFFFF0000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
