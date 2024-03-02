import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'career_oriented_skills_model.dart';
export 'career_oriented_skills_model.dart';

class CareerOrientedSkillsWidget extends StatefulWidget {
  const CareerOrientedSkillsWidget({super.key});

  @override
  State<CareerOrientedSkillsWidget> createState() => _CareerOrientedSkillsWidgetState();
}

class _CareerOrientedSkillsWidgetState extends State<CareerOrientedSkillsWidget> {
  late CareerOrientedSkillsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CareerOrientedSkillsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/2023NA_039.webp',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 400,
                                    decoration: BoxDecoration(
                                      color: const Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'CAREER - ORIENTED',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 28,
                                                  color: Colors.white,
                                                  letterSpacing: 4.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'SKILLS',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                color: const Color(0xFFFFD34C),
                                                fontSize: 30,
                                                letterSpacing: 20.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ].addToStart(const SizedBox(height: 13.0)).addToEnd(const SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                child: const ColoredBox(
                                  color: Colors.black45,
                                )),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'WE PREPARE',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/2023NA_039.webp',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.6,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.55,
                                decoration: BoxDecoration(
                                  color: const Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'CAREER - ORIENTED',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              color: Colors.white,
                                              fontSize: min(-100.0 + MediaQuery.sizeOf(context).width / 4, 40),
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'SKILLS',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            color: const Color(0xFF1F4477),
                                            fontSize: min(-130.0 + MediaQuery.sizeOf(context).width / 4, 65),
                                            letterSpacing: 30.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ].addToStart(const SizedBox(height: 12.0)).addToEnd(const SizedBox(height: 5.0)),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/white.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '\n"WE PREPARE STUDENTS FOR FUTURE SUCCESS BY EQUIPPING THEM WITH THE SKILLS AND KNOWLEDGE NEEDED TO EXCEL IN THEIR CHOSEN CAREER PATHS.”',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
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
          ),
        ),
      ),
    );
  }
}
