import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'mission_ok_pop_model.dart';
export 'mission_ok_pop_model.dart';

class MissionOkPopWidget extends StatefulWidget {
  const MissionOkPopWidget({
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
  State<MissionOkPopWidget> createState() => _MissionOkPopWidgetState();
}

class _MissionOkPopWidgetState extends State<MissionOkPopWidget> {
  late MissionOkPopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MissionOkPopModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
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
            color: const Color(0xFFEEC718),
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'OBJECTIF ACCOMPLIE ?',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Authority',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFFCCCC15),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'RÉCOMPENSE : ${widget.reward},00 EUROS',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFCCCC15),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ],
                    ),
                  ),
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
                                await HistoriqueMissionsRecord.collection
                                    .doc()
                                    .set({
                                  ...createHistoriqueMissionsRecordData(
                                    user: currentUserReference,
                                    moneygive: widget.reward,
                                    missions: widget.title,
                                    status: 'Réussie',
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'daterealise':
                                          FieldValue.serverTimestamp(),
                                    },
                                  ),
                                });

                                context.pushNamed('Double_Agent');
                              },
                              text: 'OUI',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xE40E7F16),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
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
                                await HistoriqueMissionsRecord.collection
                                    .doc()
                                    .set({
                                  ...createHistoriqueMissionsRecordData(
                                    user: currentUserReference,
                                    moneygive: '0',
                                    missions: widget.title,
                                    status: 'Échec',
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'daterealise':
                                          FieldValue.serverTimestamp(),
                                    },
                                  ),
                                });

                                context.pushNamed('Double_Agent');
                              },
                              text: 'NON',
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
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
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
