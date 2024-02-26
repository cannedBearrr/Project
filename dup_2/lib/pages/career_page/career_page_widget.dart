import 'package:sticky_headers/sticky_headers.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'career_page_model.dart';
export 'career_page_model.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height; //i
    double width = size.width;

    var path = Path();
    path.moveTo(60, height*0.8);
    path.lineTo(60, height-24);
    path.arcToPoint(Offset(60+24, height), radius: const Radius.circular(24), clockwise: false);
    path.lineTo(width-60-24, height);
    path.arcToPoint(Offset(width-60, height-24), radius: const Radius.circular(24), clockwise: false);
    path.lineTo(width-60, height*0.8);
    path.conicTo(width-60, 60, width, 0, 1);
    path.lineTo(0, 0);
    path.conicTo(60, 60, 60, height*0.8, 1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CareerPageWidget extends StatefulWidget {
  const CareerPageWidget({super.key});

  @override
  State<CareerPageWidget> createState() => _CareerPageWidgetState();
}

class _CareerPageWidgetState extends State<CareerPageWidget> {
  late CareerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CareerPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: StickyHeader(
              header: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    SizedBox(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 122,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      context.pushNamed('parentPortal');
                                    },
                                    child: Text(
                                      'PARENTS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context).primaryText,
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                              child: VerticalDivider(
                                width: 10.0,
                                thickness: 1.0,
                                indent: 4.0,
                                endIndent: 4.0,
                                color: Color(0xCC000000),
                              ),
                            ),
                            Expanded(
                              flex: 192,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 22.0, 0.0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      context.pushNamed('businessPortal');
                                    },
                                    child: Text(
                                      'BUSINESS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context).primaryText,
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                              child: VerticalDivider(
                                width: 10.0,
                                thickness: 1.0,
                                indent: 4.0,
                                endIndent: 4.0,
                                color: Color(0xCC000000),
                              ),
                            ),
                            Expanded(
                              flex: 191,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 22.0, 0.0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      context.pushNamed('pastProjects');
                                    },
                                    child: Text(
                                      'PAST PROJECTS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Outfit',
                                            color: Colors.black,
                                            fontSize: 16.0,
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    SizedBox(
                      height: 50,
                      child: ColoredBox(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  context.pushNamed('parentPortal');
                                },
                                child: Text(
                                  'PARENTS',
                                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context).primaryText,
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                              child: VerticalDivider(
                                width: 0.0,
                                thickness: 1.0,
                                color: Color(0xCC000000),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  context.pushNamed('businessPortal');
                                },
                                child: Text(
                                  'BUSINESS',
                                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context).primaryText,
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                              child: VerticalDivider(
                                width: 0.0,
                                thickness: 1.0,
                                color: Color(0xCC000000),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  context.pushNamed('pastProjects');
                                },
                                child: Text(
                                  'PAST PROJECTS',
                                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                                        fontFamily: 'Outfit',
                                        color: Colors.black,
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/693/600',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primaryBackground,
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
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/795/600',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primaryBackground,
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
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1624696941338-934bf86c28b4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8bWVjaGFuaWNhbCUyMGtleWJvYXJkfGVufDB8fHx8MTcwODc4NDgxOXww&ixlib=rb-4.0.3&q=80&w=1080',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                              ],
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
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://picsum.photos/seed/55/600',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                              ],
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Software Developer',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox.shrink(),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor’s degree or equivalent practical experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 16,lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '2 years of experience with software development in one or more programming languages, or 1 year of experience with an advanced degree',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 16,lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '2 years of experience with data structures or algorithms in either an academic or industry setting',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 16,lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 20.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'APPLY NOW',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF1F4477),
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Graphic Designer',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox.shrink(),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor’s degree or equivalent practical experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'At least 3 years of graphic design experience with strong portfolio',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Excellent communication and interpersonal skills',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Strong attention to detail and ability to meet deadlines',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 20.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'APPLY NOW',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF1F4477),
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Sales Manager',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox.shrink(),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor’s degree or equivalent practical experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '5 years of experience leading and managing a team',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Experience engaging with accounts, selling a portfolio of products at C-level',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 20.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'APPLY NOW',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF1F4477),
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Marketing Director',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox.shrink(),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor\'s degree or equivalent experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '4 years of experience in marketing',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Experience managing cross-functional or cross-team projects',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 16,lineHeight: 1.17,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 20.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'APPLY NOW',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF1F4477),
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width * 0.68,
                                    height: MediaQuery.sizeOf(context).height * 0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  indent: 25.0,
                                  endIndent: 25.0,
                                  color: FlutterFlowTheme.of(context).primaryText,
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 60.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Button',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context).primary,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width * 0.68,
                                    height: MediaQuery.sizeOf(context).height * 0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  indent: 25.0,
                                  endIndent: 25.0,
                                  color: FlutterFlowTheme.of(context).primaryText,
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 60.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Button',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context).primary,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width * 0.68,
                                    height: MediaQuery.sizeOf(context).height * 0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  indent: 25.0,
                                  endIndent: 25.0,
                                  color: FlutterFlowTheme.of(context).primaryText,
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 60.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Button',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context).primary,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width * 0.68,
                                    height: MediaQuery.sizeOf(context).height * 0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  indent: 25.0,
                                  endIndent: 25.0,
                                  color: FlutterFlowTheme.of(context).primaryText,
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 60.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Button',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context).primary,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: double.infinity,
                      ),
                      child: ColoredBox(
                        color: const Color(0xFF4C6A7D),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: Text(
                                      'LEARN MORE',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('parentPortal');
                                      },
                                      child: Text(
                                        'Home',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'About Us',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                  Text(
                                    'Our Projects',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'WHAT WE DO',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Marketing Solutions',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Website Building',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                  Text(
                                    'Tailored Solutions',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'LEGAL',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Terms of Service',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Privacy Policy',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                  Text(
                                    '',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contact Us',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      '+1 (845)-281-9257',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'bossemail@gmail.com',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                  Text(
                                    '1 Ashley Ave Middletown, NY',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                      child: Image.asset(
                                        'assets/images/linkedin.png',
                                        height: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        height: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                      child: Image.asset(
                                        'assets/images/twitter.png',
                                        height: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 20.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.15,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4C6A7D),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'LEARN MORE',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed('parentPortal');
                                        },
                                        child: Text(
                                          'Home',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'About Us',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                    Text(
                                      'Our Projects',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 2.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'WHAT WE DO',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                      child: Text(
                                        'Marketing Solutions',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Website Building',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                    Text(
                                      'Tailored Solutions',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 2.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'LEGAL',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                      child: Text(
                                        'Terms of Service',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Privacy Policy',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                    Text(
                                      '',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 2.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'CONTACT US',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                      child: Text(
                                        '+1 (845)-281-9257',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'bossemail@gmail.com',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                    Text(
                                      '1 Ashley Ave Middletown, NY',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 2.0)),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 15.0),
                              child: Image.asset(
                                'assets/images/linkedin.png',
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                              child: Image.asset(
                                'assets/images/facebook.png',
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 80.0, 15.0),
                              child: Image.asset(
                                'assets/images/twitter.png',
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
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
