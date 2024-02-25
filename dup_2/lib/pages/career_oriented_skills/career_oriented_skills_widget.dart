import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'career_oriented_skills_model.dart';
export 'career_oriented_skills_model.dart';

class CareerOrientedSkillsWidget extends StatefulWidget {
  const CareerOrientedSkillsWidget({super.key});

  @override
  State<CareerOrientedSkillsWidget> createState() =>
      _CareerOrientedSkillsWidgetState();
}

class _CareerOrientedSkillsWidgetState
    extends State<CareerOrientedSkillsWidget> {
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
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
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
                      child: Image.network(
                        'https://images.unsplash.com/photo-1551553463-1af2d342c72d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxncmF8ZW58MHx8fHwxNzAwNTI4NDA1fDA&ixlib=rb-4.0.3&q=80&w=1080',
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
                      decoration: BoxDecoration(
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
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 400,
                                height: 125,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'CAREER - ORIENTED',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 30,
                                                color: Colors.white,
                                                letterSpacing: 4.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'SKILLS',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFFFD34C),
                                              fontSize: 30,
                                              letterSpacing: 20.0,
                                              fontWeight: FontWeight.w900,
                                            ),
                                      ),
                                    ].addToStart(SizedBox(height: 10.0)),
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
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1604147706283-d7119b5b822c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx3aGl0ZXxlbnwwfHx8fDE3MDA1MDI0NDF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'WE PREPARE',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
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
                      child: Image.network(
                        'https://images.unsplash.com/photo-1432604470246-f4f905367043?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxwZXJvc258ZW58MHx8fHwxNzAxNDQxNzUyfDA&ixlib=rb-4.0.3&q=80&w=1080',
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
                      decoration: BoxDecoration(
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
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.55,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'CAREER - ORIENTED',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: min(-100.0 + MediaQuery.sizeOf(context).width / 4, 40),
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'SKILLS',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF1F4477),
                                              fontSize: min(-130.0 + MediaQuery.sizeOf(context).width / 4, 65),
                                              letterSpacing: 30.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ].addToStart(SizedBox(height: 10.0)),
                                  ),
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
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1604147706283-d7119b5b822c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx3aGl0ZXxlbnwwfHx8fDE3MDA1MDI0NDF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '\n\"WE PREPARE STUDENTS FOR FUTURE SUCCESS BY EQUIPPING THEM WITH THE SKILLS AND KNOWLEDGE NEEDED TO EXCEL IN THEIR CHOSEN CAREER PATHS.”',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
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
